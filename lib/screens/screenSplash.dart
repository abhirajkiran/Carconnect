
import 'package:carconnect_app/core/Colors.dart';
import 'package:flutter/material.dart';


class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  final String imagePath = 'assets/images/pngwing.com.png';
  @override
/*   void initState() {
    checkUser(context);
    super.initState();
  } */

  @override
  Widget build(BuildContext context) {
    precacheImage(AssetImage(imagePath), context);
    //final height = MediaQuery.of(context).size.height;
  //  final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: themeColor,
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(right: 20),
              child: Text('HAI'),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 250),
              /* child: Image.asset(
                'assets/images/playstore.png',
                scale: 3.5,
              ), */
            ),
          
          ],
        ),
      ),
    );
  }
}


