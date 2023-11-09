import 'package:flutter/material.dart';
import 'package:sample_flutter/custom_widget.dart';
void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
  home:  creation(),
  ));
}
class creation extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.teal,
       title: Text("welcome"),
     ),
     body: Container(
       child: customwidget(onpress: () {  },
       image: Image(image: AssetImage("assets/SQUIRREL.png",),height: 100,),
       text: Text("Anu",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
       colors: Colors.cyan,),
     ),
   );
  }

}