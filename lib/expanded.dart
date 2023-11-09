import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(
    home: xpand(),
  ));
}
class xpand extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Column(
       children: [
         Container(color: Colors.red,height: 100,),
         Expanded(child: Container(color: Colors.green,width: 500,
         child: Center(child: Text("hai"))),),
         Expanded(child: Container(color: Colors.amberAccent,))
       ],
     ),
   );
  }

}