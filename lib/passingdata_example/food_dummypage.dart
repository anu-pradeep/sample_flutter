

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sample_flutter/passingdata_example/food_list_items.dart';
import 'package:sample_flutter/passingdata_example/food_products.dart';
import 'package:sample_flutter/passingdata_example/splash_foodscreen.dart';
void main()
{
  runApp(MaterialApp(
    home:splashscreen(),
    debugShowCheckedModeBanner: false,
    useInheritedMediaQuery: true,
    routes:{
      //"first page"  : (context)=>  fooddummy(),
      "second page" :(context)=> fooditems(),
    },
  ));
}
class  fooddummy extends StatefulWidget
{
  @override
  State<fooddummy> createState()=> dummyfood();
}
class dummyfood extends State<fooddummy>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.blueGrey,
      appBar: AppBar(backgroundColor: Colors.blueGrey,
        title: Text("menu page",
          style: GoogleFonts.abel(fontSize: 20, color: Colors.black),),),
      body: ListView(
          children:dummyfoods.map((food)=>
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: TextButton(onPressed: ()=> gotonext(context,food["ITEM"],),
                    child: Text("${food["NAME"]}",style: GoogleFonts.alata(fontSize: 18,color: Colors.black),
                    )),
              )).toList()

      ),);
  }
}
void gotonext (BuildContext context,food)
{
  Navigator.of(context).pushNamed("second page",arguments: food);
}