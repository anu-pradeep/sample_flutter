import 'package:flutter/material.dart';
import 'package:liquid_progress_indicator_v2/liquid_progress_indicator.dart';
void main()
{
  runApp(MaterialApp(
    home: liquid(),
  ));
}
class liquid extends StatefulWidget
{
  @override
  State<liquid> createState() => progressiveState();
}
class progressiveState extends State<liquid>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        title: Text("liquid progressive indicator"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 150,top: 30),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
           // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton( child:Text("CIRCULAR"),
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.cyan),
              ),onPressed:()=> Navigator.of(context).push( MaterialPageRoute(builder: (_)=>
            LiquidCircularProgressIndicator(
              value: 0.30, // Defaults to 0.5.
              valueColor: AlwaysStoppedAnimation(Colors.pink), // Defaults to the current Theme's accentColor.
              backgroundColor: Colors.white, // Defaults to the current Theme's backgroundColor.
              borderColor: Colors.red,
              borderWidth: 3.0,
              direction: Axis.vertical, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.vertical.
              center: Text("Loading...",style: TextStyle(color: Colors.black,fontSize: 20),),
            )),),),],))),);
  }

}
