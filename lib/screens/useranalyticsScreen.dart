/* import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:carconnect_app/services/firebaseServices.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// ignore: must_be_immutable
class UserAnalyticsScreen extends StatefulWidget {
  UserAnalyticsScreen({super.key});

  @override
  State<UserAnalyticsScreen> createState() => _UserAnalyticsScreenState();
}

class _UserAnalyticsScreenState extends State<UserAnalyticsScreen> {
  /* Future<dynamic> getData() async {

    final DocumentReference document =   Firestore.instance.collection("listofprods").document('ac1');

    await document.get().then<dynamic>(( DocumentSnapshot snapshot) async{
     setState(() {
       data =snapshot.data;
     });
    });
 } */
  // Stream<DocumentSnapshot> snapshot =  FirebaseFirestore.instance.collection("drowzinessdata").doc().snapshots();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("User Name")),
        body: StreamBuilder(
            stream: FirebaseFirestore.instance
                .collection("drowzinessdata")
                .snapshots(),
            builder: (context, snaphot){
              if (snaphot.connectionState == ConnectionState.active) {
                if (snaphot.hasData) {
                  return ListView.builder(itemBuilder: (context, index) {
                    return ListTile(
                      title: Text("${snaphot.data!.docs[index]['message']}"),
                    );
                  });
                }
              }
              else{
                return Text('abc');
              }
            })

        /* ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("${snapshot}"),
            subtitle: Text("Subtitle $index"),
            leading: const Icon(Icons.warning_amber_sharp),
            trailing: const Icon(Icons.arrow_forward_ios),
          );
        },
      ), */

        /*  StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance.collection('drowzinessdata').snapshots(),
            
          builder: (context,snapshot){
          return  ListView.builder(
        itemCount:10,
        itemBuilder: (context,index) {
          return ListTile(
            title: Text('abc'  ),
            subtitle: Text("Subtitle $index"),
            leading: const Icon(Icons.warning_amber_sharp),
            trailing: const Icon(Icons.arrow_forward_ios),
          );
        },
      );
          },
      ) */
        );
  }
}
 */




import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class UserAnalyticsScreen extends StatefulWidget {
  const UserAnalyticsScreen({super.key});

  @override
  State<UserAnalyticsScreen> createState() => _UserAnalyticsScreenState();
}

class _UserAnalyticsScreenState extends State<UserAnalyticsScreen> {
  final _userStream=  FirebaseFirestore.instance.collection('drowzinessdata').snapshots();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('User Data',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 25),)),
      body: StreamBuilder(
        stream: _userStream, 
        builder: (context,snapshot){
          if(snapshot.hasError){
            return Text('connection error');
          }
          if(snapshot.connectionState== ConnectionState.waiting){
            return Text('Loading');
          }
           var doc=snapshot.data!.docs;
           
        return ListView.builder(
          itemCount: doc.length,
          itemBuilder:(context,index){
            return ListTile(
              leading: Icon(Icons.dangerous_outlined),
              title: Text(doc[index]['message']),
              subtitle: Text(doc[index]['date']),
            );
          } );
        
        
        
        }),
    );
  }
}