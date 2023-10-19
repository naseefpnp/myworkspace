import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

import 'package:flutter/material.dart';

class PermitionCheker extends StatefulWidget {
  const PermitionCheker({super.key});

  @override
  State<PermitionCheker> createState() => _PermitionChekerState();
}

class _PermitionChekerState extends State<PermitionCheker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: requestCameraPermission, child: Text("request camera permition")),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: requestMultiplePermissions, child: Text("multiple permition")),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed:requestPermissionWithOpenSettings, child: Text("go to settings")),
            ),
          ],
        ),
      ),
    );
  }

  void requestCameraPermission() async{
    var status = await Permission.camera.status;
    if(status.isGranted){
      ImagePicker picker = ImagePicker();
      picker.pickImage(source: ImageSource.camera);
      print("permission is granted");
    }else if(status.isDenied){
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Permition denined")));
      if(await Permission.camera.request().isGranted){
        print("Permission was granted");
      }
    }
  }

  void requestMultiplePermissions() async{

    Map<Permission,PermissionStatus> statusss =await [
      Permission.camera,
      Permission.storage,
      Permission.phone,
      Permission.contacts
    ].request();
    print("camera permission : ${statusss[Permission.camera]},"
           "storage permission : ${statusss[Permission.storage]},"
           "phone permission : ${statusss[Permission.phone]},"
           "contact permission : ${statusss[Permission.contacts]}");
  }

  void requestPermissionWithOpenSettings() async{
    openAppSettings();
  }
}
