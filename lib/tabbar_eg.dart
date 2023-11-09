import 'package:flutter/material.dart';
import 'GRID IN DART.dart';
import 'gridview_project.using simple grid.dart';
import 'homepage.dart';
void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: tabbar(),
  ));
}
class tabbar extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(          // adding this by wrapping
      length: 4,
      child: Scaffold(
        appBar: AppBar(title: Text("whatsapp"),
        backgroundColor: Colors.green,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Icon(Icons.camera_alt_outlined),
          ),
          SizedBox(height: 20,width: 20,),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Icon(Icons.search),
          ),
             PopupMenuButton(itemBuilder: (context)
            {
              return [
                PopupMenuItem(child: Text("settings")),
                PopupMenuItem(child: Text("invite")),
                PopupMenuItem(child: Text("help")),
              ];

            }),
          ],
        bottom: TabBar(labelColor: Colors.black,
          tabs: [
          Tab(icon: Icon(Icons.camera),),
          Tab(child: Text("chat"),),
          Tab(child: Text("status"),),
          Tab(child: Text("call"),),
        ],),
        ),
        body: TabBarView(children: [
          Text("contact"),
          homepage(),
          project(),
          grid(),
        ],),
      ),
    );
  }

}