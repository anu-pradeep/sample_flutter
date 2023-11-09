import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: tabsample(),
  ));
}
class tabsample extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: AppBar(title: Text("GeeksForGeeks",style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.tealAccent,
        bottom: TabBar(
          isScrollable: true,
          unselectedLabelColor: Colors.amberAccent,
          labelColor: Colors.black,
          indicatorColor: Colors.red,
          tabs: [
            Tab(icon: Icon(Icons.home),text: "Home",),
            Tab(icon: Icon(Icons.account_box),text: "Account",),
            Tab(icon: Icon(Icons.alarm),text: "Alarm",),
            Tab(icon: Icon(Icons.music_note),text: "Music",),
            Tab(icon: Icon(Icons.wallet),text: "Wallet",),
            Tab(icon: Icon(Icons.adb),text: "Android",),
            Tab(icon: Icon(Icons.add_chart),text: "Chart",),
          ],
        ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text("HELLO",style: TextStyle(fontSize: 25),)),
            Center(child: Text("WELCOME",style: TextStyle(fontSize: 25),)),
            Center(child: Text("FOLLOW",style: TextStyle(fontSize: 25),)),
            Center(child: Text("CONTINUE",style: TextStyle(fontSize: 25),)),
            Center(child: Text("TABBAR",style: TextStyle(fontSize: 25),)),
            Center(child: Text("ANDROID",style: TextStyle(fontSize: 25),)),
            Center(child: Text("PICTURES",style: TextStyle(fontSize: 25),)),
          ],
        ),
      ),
    );
  }

}