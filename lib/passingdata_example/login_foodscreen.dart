import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'food_dummypage.dart';
void main()
{
  runApp(MaterialApp(home: foodlogin(),
  debugShowCheckedModeBanner: false,
  useInheritedMediaQuery: true,));
}
class foodlogin extends StatefulWidget
{
  @override
  State<foodlogin> createState() =>loginstate();
}
class loginstate extends State<foodlogin>
{
  GlobalKey<FormState> formkey = GlobalKey();
  bool showpass = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.blueGrey,
      appBar: AppBar(backgroundColor: Colors.white12,
        title: Text("FOODIE'S Login ",style: GoogleFonts.abel(color: Colors.black,fontSize: 18,),),
        centerTitle: true,
      ),
      body:SingleChildScrollView(
        child: Form(
          key: formkey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Image(image: NetworkImage("data:image/png;base64,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"),),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 80,left: 15,right: 15),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "user name",
                  labelText: "user name",
                 prefixIcon: Icon(Icons.account_circle_outlined),prefixIconColor: Colors.black,
                  border: OutlineInputBorder(borderRadius:BorderRadius.circular(100),),
                ),
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: TextFormField(
                obscureText: showpass,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                  hintText: "password",labelText: "password",
                  prefixIcon: Icon(Icons.lock_open),prefixIconColor: Colors.black,
                  suffixIcon: IconButton(onPressed: () {
                    setState(() {
                     if(showpass){showpass=false;}
                     else
                       {showpass=true;}
                    });
                  }, icon: Icon(showpass==true ? Icons.visibility_off:Icons.visibility),),suffixIconColor: Colors.black,
                  border: OutlineInputBorder(borderRadius:BorderRadius.circular(100),
                ),
              )
              ),
            ),
            SizedBox(height: 50,),
            ElevatedButton(
                onPressed: (){
                  final valid= formkey.currentState!.validate();
                  Navigator.push(context as BuildContext,MaterialPageRoute(builder: (context)=>fooddummy()));
                },
                child: Text("Login",style: GoogleFonts.abhayaLibre(fontSize: 20,color: Colors.white60),),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.black),)
          ],
        ),
        ),

      ),
    );
  }

}