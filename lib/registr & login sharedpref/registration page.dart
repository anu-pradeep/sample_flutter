import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sample_flutter/registr%20&%20login%20sharedpref/login.dart';
import 'package:shared_preferences/shared_preferences.dart';
//void main(){runApp(MaterialApp(home: register(),));}
class register extends StatefulWidget
{
  @override
  State<register> createState()=> Registrationstate();
}
class Registrationstate extends State<register>
{
  late SharedPreferences data;
 final name_controller = TextEditingController();
  final  username_controller = TextEditingController();
  final  password_controller = TextEditingController();
  @override
  void dispose() {
    name_controller.dispose();
    username_controller.dispose();
    password_controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.green[100],
      appBar: AppBar(title: Text("Registration",style: GoogleFonts.aBeeZee(fontSize: 20,fontWeight: FontWeight.bold),),),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 180,left: 15,right: 15),
            child: TextFormField(
              controller: name_controller,
              decoration: InputDecoration(
                hintText: "please ent"
                    "er your name",hintStyle: GoogleFonts.aBeeZee(),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
              ),
            ),
          ),
          SizedBox(height: 25,),
          Padding(
            padding: const EdgeInsets.only(left: 15,right: 15),
            child: TextFormField(
              controller: username_controller,
              decoration: InputDecoration(
                hintText: "user name",hintStyle: GoogleFonts.aBeeZee(),
                suffixIcon: Icon(Icons.account_circle_outlined),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
              ),
            ),
          ),
    SizedBox(height: 25,),
    Padding(
      padding: const EdgeInsets.only(left: 15,right: 15),
      child: TextFormField(
        controller: password_controller,
      decoration: InputDecoration(
      hintText: "password",hintStyle: GoogleFonts.aBeeZee(),
      suffixIcon: Icon(Icons.key),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
      ),),
    ),SizedBox(height: 25,),
          ElevatedButton(onPressed: (){
            regdata();
          }, child: Text("Register here",style: GoogleFonts.aBeeZee(fontSize: 20),
          ),style: ElevatedButton.styleFrom(backgroundColor: Colors.red[200]),)
        ],

      ),
    );
  }

void regdata()
async {
  data = await SharedPreferences.getInstance();
  String name = name_controller.text;
  String username = username_controller.text;
  String password = password_controller.text;
  if(username != '' && password != '')
    {
      data.setString('name',name);
      data.setString('username',username);
      data.setString('password',password);
      print(username);
      print(password);
      Navigator.push(context, MaterialPageRoute(builder: (context)=>justlogin()));
    }
}}