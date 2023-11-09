import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: sliverbot(),
  ));
}
class sliverbot extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
            SliverAppBar(backgroundColor: Colors.white,
              floating: true,pinned: true,
              expandedHeight: 150,
              title: Text("Conversations",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),),
              actions: [//ElevatedButton(onPressed: (){}, child: Text("  + Add new")),
              TextButton(onPressed: (){}, child: Text(" + Add new",style: TextStyle(color: Colors.red),))],
              bottom: AppBar( //backgroundColor: Colors.white,
                elevation: 0,
                title: Container(
                  decoration: BoxDecoration(color: Colors.white,),
                  child: TextField(
                  decoration: InputDecoration(prefixIcon: Icon(Icons.search,),hintText: "Search"),

                  ),
                ),
              ),
            ),
          SliverList(delegate: SliverChildListDelegate(
            [
              ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage("assets/humanhead.png"),),
              title: Text("anu"),
              subtitle: Text("123"),
              trailing: Text("Today"),
            ),
              ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage("assets/humanhead.png"),),
                title: Text("anu"),
                subtitle: Text("123"),
                trailing: Text("Today"),
              ),
              ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage("assets/humanhead.png"),),
                title: Text("anu"),
                subtitle: Text("123"),
                trailing: Text("Today"),
              ),
              ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage("assets/humanhead.png"),),
                title: Text("anu"),
                subtitle: Text("123"),
                trailing: Text("yesterday"),
              ),
              ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage("assets/humanhead.png"),),
                title: Text("anu"),
                subtitle: Text("123"),
                trailing: Text("yesterday"),
              ),
              ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage("assets/humanhead.png"),),
                title: Text("anu"),
                subtitle: Text("123"),
                trailing: Text("yesterday"),
              ),
              ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage("assets/humanhead.png"),),
                title: Text("anu"),
                subtitle: Text("123"),
                trailing: Text("02.30pm"),
              ),
              ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage("assets/humanhead.png"),),
                title: Text("anu"),
                subtitle: Text("123"),
                trailing: Text("02.30pm"),
              ),
              ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage("assets/humanhead.png"),),
                title: Text("anu"),
                subtitle: Text("123"),
                trailing: Text("03.01am"),
              ),
              ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage("assets/humanhead.png"),),
                title: Text("anu"),
                subtitle: Text("123"),
                trailing: Text("03.01am"),
              ),
            ]
          ))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.chat),label: "chat"),
          BottomNavigationBarItem(icon: Icon(Icons.wifi_channel),label: "channel"),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: "profile"),
        ],
      ),
    );
  }

}