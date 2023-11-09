import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(DevicePreview(
      builder: (BuildContext context)=> MaterialApp(
      useInheritedMediaQuery: true,
    debugShowCheckedModeBanner: false,
  home: Loginpage(),
  )));
}
class Loginpage extends StatefulWidget
{
  @override
  State<Loginpage> createState() => Loginstate();
}
class Loginstate extends State<Loginpage> {
  bool showpass =true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title: Text("Login page"), backgroundColor: Colors.blue,),
      body: Container(child: Center(
        child: Column(
          children: [
            SizedBox(height:50,width: 50,),
      Image(image: AssetImage("assets/ostrich.png",),height: 100,width: 100,),
      SizedBox(height:50,width: 50,),
      Padding(padding:EdgeInsets.only(left: 50,right: 50),   //  b/w space correct aavan
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.person),
          hintText: "user name",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),

      ),
      ),
            SizedBox(height:50,width: 50,),
            Padding(
              padding: const EdgeInsets.only(left: 50,right: 50),
              child: TextFormField(
                obscureText: showpass,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon:IconButton (onPressed: (){
                    setState(() {
                      if(showpass){showpass=false;}
                      else{showpass=true;}
                    });

                  },icon: Icon(showpass==true ? Icons.visibility_off:Icons.visibility),),
                 hintText: "password",border:OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
                ),
            ),
            SizedBox(height: 100),
            ElevatedButton(onPressed: (){}, child:Text("login",style: TextStyle(color: Colors.black,backgroundColor:Colors.white24),),
            ),],),
        ),),
      );


  }
}