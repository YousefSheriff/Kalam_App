import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';

class SplashScreen extends StatelessWidget
{
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#f2f2f2'),
      body: const Center(
        child: CircleAvatar(
          backgroundImage: AssetImage('assets/images/splash.png'),
          radius: 100.0,
        ),
      ),
    );
  }
}
