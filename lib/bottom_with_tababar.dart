import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: bottomtab(),
  ));
}
class bottomtab extends StatefulWidget
{  @override
  State<bottomtab> createState() => _bottomtabState();
}

class _bottomtabState extends State<bottomtab> {
 int index=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(
        children: [
           Card(
            color: Colors.red,
            child:Container(child: Row(
              children: [Container(child: Column(
                children: [Text("NM"),Text("BHJ"),],
              ),

              )],
            ),

        ),)],),
      bottomNavigationBar: BottomNavigationBar(
         backgroundColor: Colors.tealAccent,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.amberAccent,
          currentIndex: index,
          type: BottomNavigationBarType.fixed,
          onTap: (tapindex){
            setState(() {
              index=tapindex;
            });

          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.launch_rounded),label: "Launches",),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "Cart"),
            BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: "Account"),
          ],
        ),


    );
  }
}