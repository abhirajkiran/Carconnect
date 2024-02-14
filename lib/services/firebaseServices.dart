import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
 


/* class userModel{
  final String message;
  final String time;

  userModel({required this.message, required this.time});

} */








class FirebaseAuthServices{
  FirebaseAuth _auth=FirebaseAuth.instance;


Future<User?> signUpWithEmailAndPassword(String email,String password)async{
  try {
    UserCredential credential=await _auth.createUserWithEmailAndPassword(email: email, password: password);
    return credential.user;
  } catch (e) {
    print('some error');
  }
  return null;
  
}   


Future<User?> signInWithEmailAndPassword(String email,String password)async{
  try {
    UserCredential credential=await _auth.signInWithEmailAndPassword(email: email, password: password);
    return credential.user;
  } catch (e) {
    print('some error');
  }
  return null;
  
}   



}