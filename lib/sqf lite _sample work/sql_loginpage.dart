import 'package:flutter/material.darT';
import 'package:google_fonts/google_fonts.dart';
//void main(){runApp(MaterialApp(home: sqllogin(),));}
class sqllogin extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>logiiistate();
}
class logiiistate extends State<sqllogin>
{
  GlobalKey<FormState> formkey = GlobalKey();
  bool showpass = true;
  final TextEditingController conemail = TextEditingController();
  final TextEditingController conpass = TextEditingController();
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.red[100],
   body: SingleChildScrollView(
     child: Form(
       key: formkey, child: Column(
       children: [
         Padding(
           padding: const EdgeInsets.only(top: 50),
           child: Image.network("https://cdn-icons-png.flaticon.com/128/11129/11129870.png"),
         ),
         Padding(
           padding: const EdgeInsets.only(top: 100,left: 15,right: 15),
           child: TextFormField(
             decoration: InputDecoration(
               suffixIcon: Icon(Icons.mail_lock_rounded),suffixIconColor: Colors.black,
               hintText: "user name",hintStyle: GoogleFonts.abel(color: Colors.black),
               enabledBorder:OutlineInputBorder(borderRadius: BorderRadius.circular(100),
               borderSide: BorderSide(color: Colors.red)),
               focusedBorder: OutlineInputBorder(
                 borderSide: BorderSide(color: Colors.red),
                 borderRadius: BorderRadius.circular(100)
               )
             ),
           ),
         ),
         SizedBox(height: 30,),
         Padding(
           padding: const EdgeInsets.only(left: 15,right: 15),
           child: TextFormField(
             decoration: InputDecoration(
               suffixIcon: Icon(Icons.password),suffixIconColor: Colors.black,
               hintText: "password",hintStyle: GoogleFonts.abel(color: Colors.black),
               enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(100),
               borderSide:BorderSide(color: Colors.red),),
               focusedBorder: OutlineInputBorder(
                 borderRadius:BorderRadius.circular(100),
                 borderSide: BorderSide(color: Colors.red),
               )
             ),
           ),
         ),
         SizedBox(height: 30,),
         ElevatedButton(onPressed: (){
          // if
         }, child: Text("login",style: GoogleFonts.abel(color: Colors.black,fontSize: 20),
         ),style: ElevatedButton.styleFrom(backgroundColor:Colors.red,),),
         SizedBox(height: 30,),
         TextButton(onPressed: (){},
             child: Text(" Not a user.? please register",style: GoogleFonts.abel(color: Colors.black,fontWeight: FontWeight.bold),))
       ], // textbutton click chythal registration page ilek povanm
     ),
     ),

   )
   );
  }

}
