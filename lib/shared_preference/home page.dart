import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sample_flutter/shared_preference/login%20page.dart';
import 'package:shared_preferences/shared_preferences.dart';
//void main(){runApp(MaterialApp(debugShowCheckedModeBanner: false,home: homie(),));}
class homie extends StatefulWidget
{
  @override
  State<homie> createState() => homestate();
}
class homestate extends State<homie>
{late SharedPreferences  data;
  late String username;
  @override
  void initState() {
    fetchname();
    super.initState();
  }
  void fetchname () async{
    data = await SharedPreferences.getInstance();
    setState(() {
      username = data.getString('username')!;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        //color: Colors.green[100],

          Container(color: Colors.green[100],
          child:Column( children:[
          Center(child: Padding(
            padding: const EdgeInsets.only(top: 150),
            child: Text("welcome $username",style: GoogleFonts.aBeeZee(fontSize: 20,color: Colors.purple,fontWeight: FontWeight.bold),),

          )),SizedBox(height: 20,),
          Center(child: ElevatedButton(onPressed: (){
            data.setBool("newuser", true);
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>sharelogin()));
          }, child:Text("Log out"),style: ElevatedButton.styleFrom(backgroundColor: Colors.red),))
        ]
      )
    ));

}}