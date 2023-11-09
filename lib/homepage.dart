import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: homepage(),
  ));
}
class homepage extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title:Text("listview"),),//
      body:ListView(
        children:[Card(color: Colors.green,
              child:
              ListTile(leading: CircleAvatar(backgroundImage:AssetImage("assets/ostrich.png"),),
              title: Text("anu"),
              subtitle: Text("8137017268"),
              trailing: Icon(Icons.call),
              ), ),
          Card(color: Colors.blue,
         child: ListTile(leading: CircleAvatar(backgroundImage: AssetImage("assets/person.png"),),
                title: Text("appu"),
                subtitle: Text("9037123437"),
                trailing: Icon(Icons.call),
              ),),
              Card(color: Colors.red,
          child: ListTile(leading: CircleAvatar(backgroundImage: AssetImage("assets/humanhead.png"),),
                title: Text("arju"),
                subtitle: Text("8089464024"),
                trailing: Icon(Icons.call),
              ),),
            ],
          ),
      );}
  }