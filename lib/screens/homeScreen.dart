import 'package:carconnect_app/core/Colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: homebackgroud,
      appBar: AppBar(backgroundColor: homebackgroud),
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                      'https://freesvg.org/img/abstract-user-flat-4.png'),
                ),
                const SizedBox(
                  width: 35,
                ),
                Container(
                  child: const Column(
                    children: [
                      Text('Name',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 253, 253, 253))),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                          'Vehicle status Vehicle status \n Vehicle status Vehicle status',
                          style: TextStyle(
                            color: Colors.white,
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 80,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(150))),
              width: MediaQuery.of(context).size.width,
              height: 445,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: ListBody(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(200))),
                            child: GestureDetector(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, top: 10),
                                child: Text(
                                  'ABC',
                                  style: TextStyle(fontWeight: FontWeight.w500,fontSize:18,color: homepagetextcolor),
                                ),
                              ),
                              onTap: () {},
                            )),
                            SizedBox(height:20,),
                        Container(
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(200))),
                            child: GestureDetector(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, top: 10),
                                child: Text(
                                  'ABC',
                                  style: TextStyle(fontWeight: FontWeight.w500,fontSize:18,color: homepagetextcolor),
                                ),
                              ),
                              onTap: () {},
                            )),
                            SizedBox(height:20,),
                        Container(
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(200))),
                            child: GestureDetector(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, top: 10),
                                child: Text(
                                  'ABC',
                                  style: TextStyle(fontWeight: FontWeight.w500,fontSize:18,color: homepagetextcolor),
                                ),
                              ),
                              onTap: () {},
                            )),
                            SizedBox(height:20,),
                        Container(
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(200))),
                            child: GestureDetector(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, top: 10,),
                                child: Text(
                                  'ABC',
                                  style: TextStyle(fontWeight: FontWeight.w500,fontSize:18,color: homepagetextcolor),
                                ),
                              ),
                              onTap: () {},
                            )),
                            SizedBox(height:20,),
                        Container(
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(200))),
                            child: GestureDetector(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, top: 10),
                                child: Text(
                                  'ABC',
                                  style: TextStyle(fontWeight: FontWeight.w500,fontSize:18,color: homepagetextcolor),
                                ),
                              ),
                              onTap: () {},
                            )),
                            SizedBox(height:20,),
                        Container(
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(200))),
                            child: GestureDetector(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, top: 10),
                                child: Text(
                                  'ABC',
                                  style: TextStyle(fontWeight: FontWeight.w500,fontSize:18,color: homepagetextcolor),
                                ),
                              ),
                              onTap: () {},
                            )),

                            SizedBox(height: 40,),
                            ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: homebackgroud),onPressed: (){}, child:Text('Logout',style: TextStyle(color: Colors.white),))
                            
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
