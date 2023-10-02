import 'dart:async';

import 'package:flutter/material.dart';

import 'loginpage.dart';
void main()
{
  runApp(MaterialApp(
   // useInheritedMediaQuery: true,
    debugShowCheckedModeBanner: false,
    home: myapp(),
  ));
}
class myapp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>myappstate();
}
class myappstate extends State<myapp>
{
  @override
  void initstate(){
    Timer(Duration(seconds:5),() {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Loginpage()));
    });
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text(""),),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.only(top: 40,left: 50,right: 50),
          child: Center(
            child: Column(
              children: [
                Image(image: AssetImage("assets/img.png"),height: 100,width: 100,),
                SizedBox(height: 30,),
                Text("WELCOME",style: TextStyle(fontSize: 30,fontStyle:FontStyle.italic,color: Colors.red,),),
              ],
            ),
          ),
        ),

      ),
    );
  }

}