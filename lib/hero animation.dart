import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  home: hero(),));
}
class hero extends StatefulWidget
{
  @override
  State<hero> createState() => herostate();
}
class herostate extends State<hero>
{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.blueGrey,
       title: Text("HERO ANIMATION",style: TextStyle(color: Colors.black),),),
     body: GestureDetector(onTap: (){
       Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) // work same as elevator button,
{ return page2();}));},
    child: Hero(tag: "hero1", child: Image(image: AssetImage("assets/raccon.png"),height: 150,),
    ),)
   );
  }

}
class page2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("HERO ANIMATION"),backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Hero(tag: "hero1",
          child: Image(image: AssetImage("assets/raccon.png"),height: 300,),
        ),
      ),
    );
  }

}