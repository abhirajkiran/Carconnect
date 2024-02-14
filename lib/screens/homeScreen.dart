import 'package:carconnect_app/core/Colors.dart';
import 'package:carconnect_app/screens/screenSplash.dart';
import 'package:carconnect_app/screens/useranalyticsScreen.dart';
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
            height:10,
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
              height:468,
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
                                child: Row(
                                  children: [
                                    Text(
                                      'Drowziness Status',
                                      style: TextStyle(fontWeight: FontWeight.w500,fontSize:18,color: homepagetextcolor),
                                    ),
                                    SizedBox(width:72,),
                                    Icon(Icons.info_outline)
                                  ],
                                ),
                              ),
                              onTap: () {
                                navigateTo(UserAnalyticsScreen(), context);
                              },
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
                                child: Row(
                                  children: [
                                    Text(
                                      'LaneDetection Status',
                                      style: TextStyle(fontWeight: FontWeight.w500,fontSize:18,color: homepagetextcolor),
                                    ),
                                    SizedBox(width: 50,),
                                    Icon(Icons.keyboard_arrow_right_outlined)
                                  ],
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
                                child: Row(
                                  children: [
                                    Text(
                                      'Lane Detection',
                                      style: TextStyle(fontWeight: FontWeight.w500,fontSize:18,color: homepagetextcolor),
                                    ),
                                    SizedBox(width:105,),
                                    Icon(Icons.keyboard_arrow_right_outlined)
                                  ],
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
                                child: Row(
                                  children: [
                                    Text(
                                      'Emergency Contact',
                                      style: TextStyle(fontWeight: FontWeight.w500,fontSize:18,color: homepagetextcolor),
                                    ),
                                    SizedBox(width: 65,),
                                    Icon(Icons.keyboard_arrow_right_outlined)
                                  ],
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
                                child: Row(
                                  children: [
                                    Text(
                                      'Premium',
                                      style: TextStyle(fontWeight: FontWeight.w500,fontSize:18,color: homepagetextcolor),
                                    ),
                                    SizedBox(width:150,),
                                    Icon(Icons.keyboard_arrow_right_outlined)
                                  ],
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
                                child: Row(
                                  children: [
                                    Text(
                                      'About',
                                      style: TextStyle(fontWeight: FontWeight.w500,fontSize:18,color: homepagetextcolor),
                                    ),
                                    SizedBox(width:175,),
                                    Icon(Icons.keyboard_arrow_right_outlined)
                                  ],
                                ),
                              ),
                              onTap: () {},
                            )),
                            SizedBox(height:18,),
                             Container(
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(200))),
                            child: GestureDetector(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, top: 10),
                                child: Row(
                                  children: [
                                    Text(
                                      'Rate Us',
                                      style: TextStyle(fontWeight: FontWeight.w500,fontSize:18,color: homepagetextcolor),
                                    ),
                                    SizedBox(width:160,),
                                    Icon(Icons.keyboard_arrow_right_outlined)
                                  ],
                                ),
                              ),
                              onTap: () {
                                
                              },
                            )),

                            SizedBox(height:20),
                            Padding(
                              padding: const EdgeInsets.only(left:20,right: 20),
                              child: SizedBox(height:35,width:100,child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: homebackgroud),onPressed: (){}, child:Text('Logout',style: TextStyle(color: Colors.white),))),
                            )
                            
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

  Future navigateTo(Widget a,context){
    return Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => a),
  );
  }


}
