import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: simpleplace(),
  ));
}
class simpleplace extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Container(
       height: 100,width: 100,
       child: Placeholder(
         strokeWidth: 10.0,
         fallbackHeight: 400.0,fallbackWidth: MediaQuery.of(context).size.width,
         color: Colors.black,

       ),
     ),
   );
  }

}