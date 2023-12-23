import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sample_flutter/registr%20&%20login%20sharedpref/login.dart';
import 'package:shared_preferences/shared_preferences.dart';
//void main(){runApp(MaterialApp(home: reghome(),));}
class reghome extends StatefulWidget
{
  @override
  State<reghome> createState() => homeregstate();
}
class homeregstate extends State<reghome>
{
  late SharedPreferences data;
  late String name;
  @override
  void initState() {
    initial();
  }
  Future<void> initial ()
  async {
    data = await SharedPreferences.getInstance();
    setState(() {
      name=data.getString('name')!;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.green[100],
      body:Column(
        children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 150),
            child: Text("Hai welcome home",style: GoogleFonts.aBeeZee(fontSize: 25,),
            ),
          ),
        ),
        SizedBox(height: 25,),
        ElevatedButton(onPressed: (){
          data.setBool('newuser', true);
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>justlogin()));
        }, child: Text("Log out",style: GoogleFonts.aBeeZee(fontSize: 20),),
        style: ElevatedButton.styleFrom(backgroundColor: Colors.red[200]),)],
      ),
    );
  }

}