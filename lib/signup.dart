import 'package:flutter/material.dart';

import 'login.dart';

class SignUP extends StatefulWidget {
  const SignUP({super.key});

  @override
  State<SignUP> createState() => _SignUPState();
}

class _SignUPState extends State<SignUP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Sign Up "),
        foregroundColor: Colors.white,
      ),
      body:SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 100,),
              FlutterLogo(
                size: 100,
              ),
              SizedBox(height: 5,),
              Text("Flutter",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
              SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black87)),
                  label: Text("UserName:",style: TextStyle(fontSize: 20),),
                ),
              ),

              SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black87)),
                  label: Text("Password:",style: TextStyle(fontSize: 20),),
                ),
              ),

              SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue,)),
                  label: Text("Confirm Pass_word:",style: TextStyle(fontSize: 20),),
                ),
              ),

              SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue,)),
                  label: Text("Email:",style: TextStyle(fontSize: 20),),
                ),
              ),
              SizedBox(height: 20,),

              SizedBox(height: 60,),

              ElevatedButton(
                onPressed: () {
                  // Define the action when the button is pressed
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,

                  padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15), // Padding
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30), // Rounded corners
                  ),
                ),
                child: Text('Sign Up',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
              ),

              SizedBox(height: 20,),
              TextButton(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()), // الانتقال للصفحة الثانية
                );
              }, child: Text("If you have account =>Login")),
            ],
          ),
        ) ,
      ),
    );
  }
}
