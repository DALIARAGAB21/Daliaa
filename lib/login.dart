import 'package:bmi/signup.dart';
import 'package:flutter/material.dart';
import 'BMI.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _State();
}

class _State extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Login Page"),
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
                  label: Text("E_mail",style: TextStyle(fontSize: 20),),
                ),
              ),

              SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue,)),
                  label: Text("Pass_word",style: TextStyle(fontSize: 20),),
                ),
              ),
              SizedBox(height: 20,),
              Text("Forget password!?",style: TextStyle(color: Colors.blue,fontSize: 20,),),

              SizedBox(height: 60,),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Bmi()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,

                  padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text('LOGIN',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
              ),

              SizedBox(height: 20,),
              TextButton(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUP()),
                );
              }, child: Text("Create Account")),
            ],
          ),
        ) ,
      ) ,
    );
  }
}
