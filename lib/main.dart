
import 'package:carconnect_app/screens/screenSplash.dart';
import 'package:carconnect_app/screens/useranalyticsScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';


void main()async{
  WidgetsFlutterBinding.ensureInitialized(); 
  await Firebase.initializeApp(options: const FirebaseOptions(
    apiKey: 'AIzaSyDAdeR2-cx21aeZmbVFslPtOibEskk9sJ0',
   appId: '1:8187568957:android:ee40550eb488c7b4c29b54',
    messagingSenderId: '8187568957', 
    projectId: 'android/app/google-services.json'));  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,

      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  SplashScreen(),
    );
  }
}

