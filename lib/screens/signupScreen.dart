
import 'package:carconnect_app/core/GContainer.dart';
import 'package:carconnect_app/screens/loginScreen.dart';
import 'package:carconnect_app/services/firebaseServices.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class ScreenSignUp extends StatefulWidget {
  ScreenSignUp({super.key});

  @override
  State<ScreenSignUp> createState() => _ScreenSignUpState();
}

class _ScreenSignUpState extends State<ScreenSignUp> {
  final FirebaseAuthServices _auth=FirebaseAuthServices();
  final _emailController = TextEditingController();

  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          //custom container

          const GContainer(text: "Let's SignUp,\n     Shall We?"),
          const SizedBox(height: 60),

          //email text field

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: TextFormField(
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

          //password text field

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: TextFormField(
              obscureText: true,
              obscuringCharacter: '*',
              controller: _passwordController,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.key_outlined),
                hintStyle: TextStyle(color: Colors.black45),
                hintText: "Password",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
            width: double.infinity,
          ),

          //elevated Button

          ElevatedButton(
            onPressed: ()  {
              print(_emailController.text);
           _signup();
            },
            child: const Text("Sign Up"),
          ),
          const SizedBox(height: 100),

          //Navigator to signin

          TextButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ScreenSignIn()));
              },
              child: const Text(
                "Already Have An Account?\nSign In",
                textAlign: TextAlign.center,
              )),
        ],
      )),
    );
  }

  void _signup()async{
    
    String email=_emailController.text;
     String password=_passwordController.text;
     User? user=await _auth.signUpWithEmailAndPassword(email, password);

     if(user != null){
      print('user created');
     }else{
      print('error'); 
     }
  }
}
