import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home page.dart';
void main()
{
  runApp(MaterialApp(home: sharelogin(),debugShowCheckedModeBanner: false,));
}
class sharelogin extends StatefulWidget
{
  @override
  State<sharelogin> createState()=> sharestate();
}
class sharestate extends State<sharelogin>
{
  late SharedPreferences data;
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  late bool newuser;
  @override
  void initState() {
    checkuser();
    super.initState();
  }
  Future<void> checkuser()
  async {
      data =await SharedPreferences.getInstance();
      newuser = (data.getBool("newuser") ?? true);
      if( newuser == false)
        {
          Navigator.push(context,MaterialPageRoute(builder: (context)=> homie()));
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(title: Text("Shared preferences",style: GoogleFonts.aBeeZee(fontWeight: FontWeight.bold,fontSize: 20),),
      centerTitle: true,),
      body: Container(
        child:Center(
        child: Column(
          children: [Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Image(image:NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdjLlJS2C2KD-fRoOykz8e5luqOtFFpGo_QQ&usqp=CAU"),),
          ),
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10,top: 80),
              child: TextFormField(controller: username,
                decoration: InputDecoration(
                  hintText: "user name", labelText: "user name",
                  prefixIcon: Icon(Icons.mail_outline_rounded),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide:  BorderSide(color: Colors.pinkAccent),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide:  BorderSide(color: Colors.pinkAccent),
                    ),

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10,top: 20),
              child: TextFormField(
                controller: password,
                decoration: InputDecoration(
                  hintText: "password",labelText: "password",
                  prefixIcon: Icon(Icons.lock_open),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide:  BorderSide(color: Colors.pinkAccent),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide:  BorderSide(color: Colors.pinkAccent),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ElevatedButton(onPressed: (){
                String uname =username.text;
                String pwd =password.text;
                if(uname != '' && pwd != ''){print("login success");}
                data.setString("username", uname);
                data.setBool("newuser", false);
                print(uname);
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> homie()));
              },
                  child: Text("Login",style: GoogleFonts.aBeeZee(fontSize: 15,),
                  ),style: ElevatedButton.styleFrom(backgroundColor: Colors.red)),),
          ],
        ),
        ),
      ),
    );
  }

}