import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: lottie(),
  ));
}
class lottie extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Lottie.asset("Animation/animat.json"),
          Lottie.asset("https://lottie.host/61749a26-5285-4150-a1ec-9545e56af59f/rTsyuJDncx.json"),
        ],
      ),
    );
  }//pending
}