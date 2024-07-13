import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:day4_calculation/home_page.dart';
import 'package:flutter/material.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: AnimatedSplashScreen(


          splash: const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
              children: [

               Image(
                 image: AssetImage("assets/images/logo.png"),
                    width: 80,
                    height: 80,
                  ),

                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text("Calculation",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                ),

              ],
            ),

          nextScreen: Home_Page(),
          duration: 3000,
          splashIconSize: 130,

          splashTransition: SplashTransition.fadeTransition,
          backgroundColor: Colors.black


      ),



    );
  }
}
