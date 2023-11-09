import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: stack(),
  ));
}
class stack extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(child: Container(child:
          Center(child: Text("HELLO",style: TextStyle(fontSize: 20,color: Colors.black,fontStyle: FontStyle.italic),)),
          color:Colors.cyanAccent,height: 500,width: 400,)),
          Positioned(child: Container(child:
          Center(child: Text("HAI",style: TextStyle(fontSize: 20,color: Colors.black,fontStyle: FontStyle.italic),)),
            color: Colors.amberAccent,height: 150,width: 150,),top: 150,left: 90,),
          Positioned(child: Container(
            child: Center(child: Text("HI",style: TextStyle(fontSize: 20,color: Colors.black,fontStyle: FontStyle.italic),)),
            color: Colors.green,height: 180,width: 150,),top: 150,right: 100,),
        ],
      ),
    );
  }

}