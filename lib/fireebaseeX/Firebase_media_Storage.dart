import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as path;

class FireStorage extends StatefulWidget {
  const FireStorage({super.key});

  @override
  State<FireStorage> createState() => _FireStorageState();
}

class _FireStorageState extends State<FireStorage> {
  FirebaseStorage storage = FirebaseStorage.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Storage media"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                ElevatedButton.icon(
                    onPressed: () => upload("camera"),
                    icon: Icon(Icons.camera_alt_outlined),
                    label: Text("camera")),
                ElevatedButton.icon(
                    onPressed: () => upload("Gallery"),
                    icon: Icon(Icons.photo),
                    label: Text("Gallery")),
              ],
            ),
            // if firebase connection is success, load data or media from firebase
            Expanded(
                child: FutureBuilder(
                    future: loadMedia(),
                    builder: (context,
                        AsyncSnapshot<List<Map<String, dynamic>>> snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        return ListView.builder(
                            itemCount: snapshot.data?.length ?? 0,
                            itemBuilder: (context, index) {
                              final Map<String, dynamic> image =
                                  snapshot.data![index];
                              return Card(
                                child: ListTile(
                                  leading: Image.network(image['url']),
                                  title: Text(image['uploadedBy']),
                                  subtitle: Text(image['description']),
                                  trailing: IconButton(
                                      onPressed: () =>
                                          deleteMedia(image['path']),
                                      icon: Icon(Icons.delete)),
                                ),
                              );
                            });
                      }
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }))
          ],
        ),
      ),
    );
  }

  Future<void> upload(String imageSource) async {
    final Ipicker = ImagePicker();
    XFile? pickedImage;
    try {
      pickedImage = await Ipicker.pickImage(
          source: ImageSource == 'camera'
              ? ImageSource.camera
              : ImageSource.gallery,
          maxWidth: 1920);
      final String fileName = path.basename(pickedImage!.path);
      File imagefile = File(pickedImage.path);
      try {
        await storage.ref(fileName).putFile(
            imagefile,
            SettableMetadata(customMetadata: {
              'uploadedBy': "Its Me XXxx",
              'description': "Some Description"
            }));
        setState(() {});
      } on FirebaseException catch (error) {
        print(error);
      }
    } catch (error) {
      print(error);
    }
  }

  Future<List<Map<String, dynamic>>> loadMedia() async {
    List<Map<String, dynamic>> images = [];
    final ListResult result = await storage.ref().list();
    final List<Reference> allfiles = result.items;
    await Future.forEach(allfiles, (singlefiles) async {
      final String fileUrl =
          await singlefiles.getDownloadURL(); // to fetch the image path
      final FullMetadata metadata =
          await singlefiles.getMetadata(); //to fetch meta data from firebase

      images.add({
        'url': fileUrl,
        'path': singlefiles.fullPath,
        'uploadedBy': metadata.customMetadata?['uploadedBy'] ?? 'No Data',
        'description':
            metadata.customMetadata?['decription'] ?? 'No Description'
      });
    });
    return images;
  }

 Future<void> deleteMedia(imagepath) async{
    await storage.ref(imagepath).delete();
    setState(() {});
 }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyAJH5OM5lY75HTo2GoRzyRmwdupiyoOloQ",
        appId: "1:403385477918:android:49efea559991ce14cbb70f",
        projectId: 'fir-p-602f1',
        messagingSenderId: '',
        storageBucket: "fir-p-602f1.appspot.com"),
  );
  runApp(MaterialApp(
    home: FireStorage(),
  ));
}
