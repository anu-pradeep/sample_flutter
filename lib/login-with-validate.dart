import 'package:flutter/material.dart';
import 'homepage.dart';

void main()
{
  runApp(MaterialApp(
            //useInheritedMediaQuery: true,
            debugShowCheckedModeBanner: false,
            home: login(),
         ));
}

class login extends StatefulWidget {
  @override
  State<login> createState() => state();
}

class state extends State<login> {
  GlobalKey<FormState> formkey = GlobalKey();
  bool showpass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "login",
        ),
        backgroundColor: Colors.cyanAccent,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
            children: [
              SizedBox(
                height: 80,
                width: 50,
              ),
              Image(
                image: AssetImage("assets/image.png"),
                height: 100,
                width: 100,
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(right: 60, left: 60),
                child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      labelText: "user name",
                      hintText: "user name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                validator: (uname) {
                  if (uname!.isEmpty || !uname.contains('@') ||
                      !uname.contains(".")) {
                    return "please enter valid username";
                  }
                  else {
                    return null;
                  };
                }),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 60, right: 60),
                child: TextFormField(
                  obscureText: showpass,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if (showpass) {
                              showpass = false;
                            } else {
                              showpass = true;
                            }
                          });
                        },
                        icon: Icon(showpass == true
                            ? Icons.visibility_off
                            : Icons.visibility),
                      ),
                      labelText: "password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                validator: (password){
                    if(password!.isEmpty || password.length<6)
                    { return "please enter valid password";}
                    else {  return null ;}
                },
                ),
              ),
              SizedBox(
                height:30,),
              ElevatedButton(
                onPressed: () {
                  final valid=formkey.currentState!.validate();
                  if(valid){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>homepage()));
                  }
                },
                child: Text(
                  "login",
                  style: TextStyle(
                      color: Colors.black, backgroundColor: Colors.white24),
                ),
                style: ElevatedButton.styleFrom(backgroundColor:Colors.white),
              ),
            SizedBox(height: 30,),
            TextButton(onPressed: (){},
                child: Text("create a new user"),)
            ],
          ),
        ),
      ),
    );
  }
}
