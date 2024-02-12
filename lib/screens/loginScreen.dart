import 'package:carconnect_app/core/GContainer.dart';
import 'package:carconnect_app/core/SnaackBar.dart';
import 'package:carconnect_app/screens/signupScreen.dart';
import 'package:carconnect_app/services/firebaseServices.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';


class ScreenSignIn extends StatefulWidget {

  ScreenSignIn({super.key});

  @override
  State<ScreenSignIn> createState() => _ScreenSignInState();
}

class _ScreenSignInState extends State<ScreenSignIn> {
  final FirebaseAuthServices _auth=FirebaseAuthServices();
  final _emailController = TextEditingController();

  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          //container

          const GContainer(text: "Let's SignIn,\n     Shall We?"),
          const SizedBox(height: 60),

          //mail textfield

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.mail_outline),
                hintStyle: TextStyle(color: Colors.black45),
                hintText: "Mail",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),

          //password textfield

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: TextField(
              controller: _passwordController,
              obscureText: true,
              obscuringCharacter: "*",
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.key_outlined),
                hintStyle: TextStyle(color: Colors.black45),
                hintText: "Password",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
            width: double.infinity,
          ),

          //forgot password

          Padding(
            padding: const EdgeInsets.only(left: 170),
            child: TextButton(
              onPressed: () {
                _emailController.clear();
                _passwordController.clear();
                Navigator.of(context).pushNamed("forgot");
              },
              child: const Text("forgot password?"),
            ),
          ),
          const SizedBox(
            height: 5,
            width: double.infinity,
          ),

          //elevated button

          ElevatedButton(
            onPressed: () async {
              
             _signin();
            },
            child: const Text("Sign In"),
          ),
          const SizedBox(height: 100),

          //text button

          TextButton(
              onPressed: () {
                
              Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => ScreenSignUp()),
  );
                
              },
              child: const Text(
                "New to carConnect Sign Up",
                textAlign: TextAlign.center,
              )),
        ],
      )),
    );
  }

  void _signin()async{
    
    String email=_emailController.text;
     String password=_passwordController.text;
     User? user=await _auth.signInWithEmailAndPassword(email, password);

     if(user != null){
      print('user login');
     }else{
      print('error'); 
     }
  }
}
