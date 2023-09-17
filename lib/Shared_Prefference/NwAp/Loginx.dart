import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'SOne.dart';
import 'Signup.dart';

class LogInX extends StatefulWidget {
  const LogInX({super.key});

  @override
  State<LogInX> createState() => _LogInXState();
}

class _LogInXState extends State<LogInX> {
  var Email = TextEditingController();
  var Password = TextEditingController();
  late SharedPreferences preferences;
  late String email;
  late String password;

  @override
  void initState() {
    // TODO: implement initState
     fetchData();
    super.initState();
  }

  void fetchData() async{
    preferences = await SharedPreferences.getInstance();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("Login",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
          ),
          Text("Login your account",style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal),),
          SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              controller: Email,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Email",
                  labelText: "Email",
                  prefixIcon: Icon(Icons.mail)
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              controller: Password,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Password",
                  labelText: "Password",
                  prefixIcon: Icon(Icons.password)
              ),
            ),
          ),
          SizedBox(height: 150,),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: ElevatedButton(
                onPressed: () async{
                  preferences = await SharedPreferences.getInstance();

                  email = preferences.getString('Email')!;
                  password = preferences.getString("password")!;
                 String emailid = Email.text;
                 String Pass = Password.text;
                if(emailid == email && Pass == password){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SOne()));
                }else{
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("invalid username or password")));
                }

                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    onPrimary: Colors.white,
                    padding:
                    EdgeInsets.symmetric(horizontal:80 , vertical: 16),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                child: Text("Login")),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("New user?",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 14),),
                TextButton(onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignUP()));
                }, child: Text("Sign Up",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),))
              ],
            ),
          ),
        ],
      ),
    ),
    );

  }


}
