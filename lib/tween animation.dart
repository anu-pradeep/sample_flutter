import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){runApp(MaterialApp(debugShowCheckedModeBanner: false,home: tween(),));}
class tween extends StatefulWidget
{const tween({super.key});
  @override
  State<tween> createState() => tweenanimistate();
}
class tweenanimistate extends State<tween>
 with SingleTickerProviderStateMixin {          // single animation run cheyyan vendi "animation controller" kittan venditt
double animationEnd = 0.0;

@override
  Widget build(BuildContext context) {
    return Scaffold(//backgroundColor: Colors.blue[200],
      appBar: AppBar(title: Text("Tween Animation",style: GoogleFonts.aboreto(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),),
      backgroundColor: Colors.red[100],),
      body: SafeArea(
        child: Center(
          child: TweenAnimationBuilder(
  tween: Tween(begin: 10.0,end: 500.0), 
  duration: Duration(seconds: 5), builder: (BuildContext context,  value,  child) {  
    return Container(
     child: Image.network("https://images.pexels.com/photos/719396/pexels-photo-719396.jpeg?auto=compress&cs=tinysrgb&w=600"),
      height:value,width: value,
    //Text("hai")
    );
  },
           
        ),

      ),)
    );
  }

}