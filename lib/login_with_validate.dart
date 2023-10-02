import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(
    useInheritedMediaQuery: true,
    debugShowCheckedModeBanner: false,
    home: login_with_valid(),
  ));
}
class login_with_valid extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> loginvalidatestate();

  }
class loginvalidatestate extends State<login_with_valid>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("LOGIN WITH VALIDATE"),),
      body:SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 50,width: 50,),
              Text("login page",style:TextStyle(fontStyle:FontStyle.italic,fontSize: 30,color: Colors.blue),),
              SizedBox(height: 30,width: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 30,right: 30),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                 labelText: "user name" ,hintText: "user name",
                  border:OutlineInputBorder(borderRadius:BorderRadius.circular(150))),
                ),
              ),
              SizedBox(height: 30,width: 30,),
             Padding(padding: EdgeInsets.only(right: 30,left: 30),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.visibility_off),
                  labelText: "password", hintText: "password", border: OutlineInputBorder(borderRadius:BorderRadius.circular(150))),
                ),
              ),
              SizedBox(height: 30,width: 30,),
              ElevatedButton(onPressed: (){}, child:Text("login",style:TextStyle(fontStyle:FontStyle.italic,fontSize: 30),),
                style:ElevatedButton.styleFrom(backgroundColor:Colors.redAccent,),),
             Padding(padding: EdgeInsets.only(right: 30,left: 30),),
              ],)
          )
          ),


    );
  }

}