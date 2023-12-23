import 'package:flutter/material.darT';
import 'package:google_fonts/google_fonts.dart';
import 'package:sample_flutter/sqf%20lite%20_sample%20work/sql.sample.helpercls.dart';
import 'package:sample_flutter/sqf%20lite%20_sample%20work/splash_sql.dart';
import 'package:sample_flutter/sqf%20lite%20_sample%20work/sql_loginpage.dart';
//void main(){runApp(MaterialApp(home: sqlregistr(),));}
class sqlregistr extends StatefulWidget
{
  @override
  State<StatefulWidget> createState()=> registrstate();
}
class registrstate extends State<sqlregistr>
{
  var  formkey = GlobalKey<FormState>();
  var conname = TextEditingController();
  var conemail = TextEditingController();
  var conpass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Future<void> addnewuser (String name,String email, String password)
    async {
      var id = await helpersql.addnewuser(name, email, password);
      if (id != null)
        {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>sqllogin()));
        }
      else {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>sqlsplash()));
        }
    }
    return Scaffold(
      appBar: AppBar(
      title: Text(" Register here"),),
      body: SingleChildScrollView(child:
      Form(
        key:formkey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15,top: 200),
              child: TextFormField(
                controller: conname,
                validator: (name) // here 'name' is our choice not need to declair early
                {
                  if(name!.isEmpty){ return "name is required";}
                  else { return null;}
                },
                textInputAction: TextInputAction.next, // this is for working enter key
                decoration: InputDecoration(
                  hintText: "name",hintStyle: GoogleFonts.aBeeZee(),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),
        TextFormField(
          controller: conemail,
          validator: (email)
          {
            if(email!.isEmpty && email.contains("@")&& email.contains("."))
              {return " enter valid email";}
            else {return null;}
          },
          decoration: InputDecoration(
            hintText: "email",hintStyle: GoogleFonts.aBeeZee(),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
              borderRadius: BorderRadius.circular(100),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100),
              borderSide: BorderSide(color: Colors.black),
            ),
          ),
        ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: TextFormField(
                controller: conpass,
                validator: (psswrd)
                {
                  if(psswrd!.isEmpty || psswrd.length<6){ return "incorrect password";}
                  else {return null;}
                },
                decoration: InputDecoration(
                  hintText: "password",hintStyle: GoogleFonts.aBeeZee(),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: () async {
              final valid1 = formkey.currentState!.validate();
              if (valid1) {
                String uname = conemail.text;
                String name = conname.text;
                var data = await helpersql.userfound(uname, name);
                if (data!.isNotEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar
                    (content: Text("user already exist")));
                }
                else {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                          action: SnackBarAction(
                              label: "undo", onPressed: () {}),
                          content: Text("invalid username/ password")));
                }
              }

              //Text("login");
            }, child: null,)] // goes to logipage
        ),
      ),)
    );
  }
}


// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.darT';
// import 'package:sample_flutter/sqf%20lite%20_sample%20work/sql.userpage.dart';
// import 'package:sample_flutter/sqf%20lite%20_sample%20work/sql_adminpage.dart';
//
// import '../SQFlite file/sqlhelper.dart';
//
// class Login_Form extends StatefulWidget {
//   @override
//   State<Login_Form> createState() => _Login_FormState();
//}

//class _Login_FormState extends State<Login_Form> {

  //var formkey = GlobalKey<FormState>();
//   final TextEditingController conemail = TextEditingController();
//   final TextEditingController conpass = TextEditingController();
//
//   void logincheck(String email, String password) async {
//     if (email == 'admin@gmail.com' && password == '123456') {
//       Navigator.pushReplacement(
//           context, MaterialPageRoute(builder: (context) => const AdminHome()));
//     } else {
//       var data = await SQLHelper.CheckLogin(email, password);
//       if (data.isNotEmpty) {
//         Navigator.pushReplacement(context,
//             MaterialPageRoute(builder: (context) => Home(data: data,)));
//         print('Login Success');
//       } else if (data.isEmpty) {
//         Navigator.pushReplacement(
//             context, MaterialPageRoute(builder: (context) => Login_Signup()));
//         print('Login faild');
//       }
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     bool hidepass = true;
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("LOGIN PAGE"),
//       ),
//       body: Form(
//         key: formkey,
//         child: ListView(
//           children: [
//             const Center(
//                 child: Padding(
//                   padding: EdgeInsets.only(top: 20.0),
//                   child: Text(
//                     "Login Page",
//                     style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//                   ),
//                 )),
//             Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: TextFormField(
//                 controller: conemail,
//                 decoration: InputDecoration(
//                     prefixIcon: const Icon(Icons.drive_file_rename_outline),
//                     labelText: "Email",
//
//                     border: OutlineInputBorder(
//
//                       borderRadius: BorderRadius.circular(20),
//                     )
//                 ),
//                 validator: (text) {
//                   if (text!.isEmpty ||
//                       !text.contains('@') ||
//                       !text.contains(".")) {
//                     return "Enter valid Email!!!";
//                   }
//                 },
//                 textInputAction: TextInputAction.next,
//               ),
//             ),
//             Padding(
//                 padding: const EdgeInsets.all(20),
//                 child: TextFormField(
//                   controller: conpass,
//                   obscureText: hidepass,
//                   obscuringCharacter: "*",
//                   decoration: InputDecoration(
//                     prefixIcon: const Icon(Icons.lock),
//                     suffixIcon: IconButton(
//                       onPressed: () {
//                         setState(() {
//                           if (hidepass)
//                             hidepass = false;
//                           else
//                             hidepass = true;
//                         });
//                       },
//                       icon: Icon(
//                           hidepass ? Icons.visibility : Icons.visibility_off),
//                     ),
//                     labelText: "Password",
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                   ),
//                   validator: (pass) {
//                     if (pass!.isEmpty || pass.length < 6) {
//                       return "Password length should be greater than 6";
//                     }
//                   },
//                   textInputAction: TextInputAction.next,
//                 )),
//             Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: MaterialButton(
//                 color: Colors.pink,
//                 textColor: Colors.white,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(20.0),
//                 ),
//                 onPressed: () {
//                   final valid = formkey.currentState!.validate();
//
//                   if (valid) {
//                     logincheck(conemail.text, conpass.text);
//                   } else {}
//                 },
//                 child: const Text("LOGIN"),
//               ),
//             ),
//             TextButton(
//                 onPressed: () {
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => Signup_Form()));
//                 },
//                 child: const Text('Not a User? Register Here!!!'))
//           ],
//         ),
//       ),
//     );
//   }
// }