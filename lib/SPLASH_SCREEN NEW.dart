import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: loginpage(),
  ));
}
class loginpage extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text("LOGIN WITH VALIDATE",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),) ,
      body: Container(color: Colors.white38,
      child: Center(
        child: Column(
          children: [
           SizedBox(height: 50,),
            Image(image: AssetImage("assets/humanhead.png"),height: 200,width: 200,),
            SizedBox(height: 30,),

            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person,),
                labelText: "user name",
                hintText: "user name",
                border:OutlineInputBorder(borderRadius: BorderRadius.circular(150),),
              ),
            ),
        SizedBox(height: 30,),
        TextFormField(
      decoration: InputDecoration(
      prefixIcon: Icon(Icons.lock,),
        labelText: "password",
        hintText: "password",
        border:OutlineInputBorder(borderRadius: BorderRadius.circular(150),),
      ),),
            //ElevatedButton(onPressed: (){},
              //  child: )
      ],
        ),
      ),),


    );
  }

}