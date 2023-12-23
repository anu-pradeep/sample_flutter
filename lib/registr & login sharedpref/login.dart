import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sample_flutter/registr%20&%20login%20sharedpref/home%20for%20reg.dart';
import 'package:sample_flutter/registr%20&%20login%20sharedpref/registration%20page.dart';
import 'package:shared_preferences/shared_preferences.dart';
void main()
{
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  home: justlogin(),));
}
class justlogin extends StatefulWidget
{
  @override
  State<justlogin> createState()=> juststate();
}
class juststate extends State<justlogin>
{
  late SharedPreferences data;
  final username_controller = TextEditingController();
  final password_controller = TextEditingController();
  late bool newuser;
  late String uname;
  late String pswrd;
  late String name;
  @override
  void initState() {
    userchecking();
    getvalue();
   // super.initState();
  }
  Future<void> getvalue()
  async {
    data = await SharedPreferences.getInstance();
    setState(() {
      name = data.getString('name')!;
      uname =data.getString('username')!;
      pswrd = data.getString('password')!;
    });

  }
 Future <void> userchecking()
 async {
   data = await SharedPreferences.getInstance();
   newuser = (data.getBool("new user")?? true);
   if(newuser == false)
     {
       Navigator.push(context, MaterialPageRoute(builder: (context)=>reghome()));
     }
 }
 @override
  void dispose() {
    username_controller.dispose();
    password_controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(backgroundColor: Colors.green[100],
     appBar: AppBar(title: Text("Login",style: GoogleFonts.abel(fontSize: 20,fontWeight: FontWeight.bold),),),
    body: Column(
      children: [
         Padding(
           padding: const EdgeInsets.only(top: 180,left: 15,right: 15),
           child: TextFormField(
             controller:username_controller ,
              decoration: InputDecoration(

                hintText: "user name",
                prefixIcon: Icon(Icons.mail),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
              ),
            ),
         ),
        SizedBox(height: 30,),
        Padding(
          padding: const EdgeInsets.only(left: 15,right: 15),
          child: TextFormField(
            controller:password_controller ,
            decoration: InputDecoration(hintText: "password",labelText: "password",
            prefixIcon: Icon(Icons.lock_clock_outlined),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(100),
            )),

          ),
        ),
        SizedBox(height: 30,),
        ElevatedButton(onPressed: (){
         // reghome();
          print(uname);
          print(pswrd);
          String username = username_controller.text;
          String password = password_controller.text;
          print(username);
          print(password);
          if (username !='' && password != '' && username==uname && password==pswrd)
            {
              print("Successful");
              data.setBool('newuser', false);

              Navigator.push(context, MaterialPageRoute(builder: (context)=>reghome()));
            }
        }, child: Text("Login",style: GoogleFonts.abel(fontSize: 20),),
          style:ElevatedButton.styleFrom(backgroundColor: Colors.red[200]) ,),
    SizedBox(height: 20,),
    TextButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>register()));
    }, child: Text("create a new user",style: GoogleFonts.abel(fontWeight: FontWeight.bold,color: Colors.black),)),
      ],
    ),
   );
  }

}