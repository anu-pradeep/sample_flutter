import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: bottom(),
  ));
}
class bottom extends StatefulWidget
{
  @override
  State<bottom> createState() => bottomnav();
  }

 class bottomnav extends State<bottom>
 {
  @override
  int index=2;
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Container(color: Colors.green,),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        currentIndex: index,
        type: BottomNavigationBarType.fixed,
        onTap: (tapindex)
        {
          setState(() {
            index=tapindex;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: "Account"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Favorite"),
          BottomNavigationBarItem(icon: Icon(Icons.login),label: "Login"),
        ],
      ),

);
  }

 }