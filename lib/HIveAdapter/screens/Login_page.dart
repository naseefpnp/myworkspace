import 'package:flutter/material.dart';
import 'package:myworkspace/HIveAdapter/database/hivedb.dart';

import 'package:hive/hive.dart';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:myworkspace/HIveAdapter/screens/home.dart';
import 'package:myworkspace/HIveAdapter/screens/register_page.dart';

import '../models/user_model.dart';

class Login_ extends StatelessWidget {
  var usercon = TextEditingController();
  var passcon = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: usercon,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "username",
                  labelText: "username",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: passcon,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "password",
                  labelText: "password",
                ),
              ),
            ),
            ElevatedButton(onPressed: ()async{
              final users = await HiveDb.instance.getUser();
              checkUserExist(users,context);
            },
                child: Text("Login")),
            TextButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>RegisterHive()));
            },
                child: Text("new user..? Signup"))
          ],
        ),
      ),
    );
  }

  Future<void> checkUserExist(List<User> users,context) async {
    final lemail = usercon.text.trim();
    final lpass = passcon.text.trim();
    bool userFound = false;
    if (lemail != "" || lpass != ""){
      await Future.forEach(users, (singleuser) => {
        if(lemail == singleuser.email && lpass == singleuser.password ){
          userFound = true
        }else{
          userFound = false
      }
      });
    if(userFound == true){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>HomePa()));
    }else{
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Login Failed,user already exist")));
    }
    }else{
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("fields must not be empty")));
    }
  }
}
void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  Hive.initFlutter();
  Hive.openBox<User>('userdata');
runApp(MaterialApp(home: Login_(),));
}