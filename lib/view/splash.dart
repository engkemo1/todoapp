import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoapp/view/HomeScreen.dart';


class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}



class _SplashState extends State<Splash> {



  @override

  Map<int, Widget> output = {1: HomeScreen()};

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(nextScreen: HomeScreen(),
      splash:Image(image:AssetImage('images/todo.png') ,width: 500,height: 500,color: Colors.orange,) ,
      splashTransition: SplashTransition.scaleTransition,
        backgroundColor:const Color(0xff00334a)
      // imagePath:'assets/logo.png', home: Home(),
      // backGroundColor:const Color(0xff00334a),
      // customFunction:  (){
      //   player.play();
      //   return 1;
      // },
      // duration: 4000,
      // outputAndHome: output,
      // type: CustomSplashType.BackgroundProcess,
      //   animationEffect: 'zoom-in',

    );
  }
}
