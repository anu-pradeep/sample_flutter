
import 'dart:async';

import 'package:flutter/material.darT';
import 'package:google_fonts/google_fonts.dart';
import 'package:sample_flutter/sqf%20lite%20_sample%20work/sql_loginpage.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  home: sqlsplash(),));
}
class sqlsplash extends StatefulWidget
{
  @override
  State<sqlsplash> createState()=> splashsqlstate();
}
class splashsqlstate extends State<sqlsplash>
{
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(context as BuildContext,
      MaterialPageRoute(builder:(context)=> sqllogin()));
    });
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(backgroundColor: Colors.blue[200],
     body: Container(
       child: Column(
         children: [
           Center(
             child: Padding(
               padding: const EdgeInsets.only(top: 250),
               child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtcnqDcKt49hATrXlVGbMwTRrVofYJqgoeFMTBYgUM1g4YfiT92kAwSr3UGnKf2EqQ6aA&usqp=CAU",
               height: 200,width: 200,),
               
             ),
           ),
           SizedBox(height: 10,),
           Text("meta",style: GoogleFonts.aboreto(fontSize: 20,fontWeight: FontWeight.bold),)
         ],
       ),
     ),
   );
  }
  
}