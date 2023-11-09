import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: slivers(),
  ));
}
class slivers extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,pinned: true,
            expandedHeight: 200,
            flexibleSpace: Container(color: Colors.white60,),
            title: Text("SLIVER EXAMPLE"),  // this is flexible space
            actions: [
              IconButton(onPressed: (){},
                  icon:Icon(Icons.shopping_cart),),
              IconButton(onPressed: (){},
                  icon: Icon(Icons.favorite)),
            ],
            bottom: AppBar(
              elevation: 0,
              title:Container(
                decoration:BoxDecoration(color: Colors.white),
                child: TextField(
                  decoration: InputDecoration(hintText: "  search here",suffixIcon: Icon(Icons.search)),
                ),
              ),
              ) ,
            ),
          SliverList(delegate: SliverChildListDelegate(
            [
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text("hai"),
                trailing: Icon(Icons.account_box),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text("hai"),
                trailing: Icon(Icons.account_box),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text("hai"),
                trailing: Icon(Icons.account_box),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text("hai"),
                trailing: Icon(Icons.account_box),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text("hai"),
                trailing: Icon(Icons.account_box),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text("hai"),
                trailing: Icon(Icons.account_box),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text("hai"),
                trailing: Icon(Icons.account_box),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text("hai"),
                trailing: Icon(Icons.account_box),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text("hai"),
                trailing: Icon(Icons.account_box),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text("hai"),
                trailing: Icon(Icons.account_box),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text("hai"),
                trailing: Icon(Icons.account_box),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text("hai"),
                trailing: Icon(Icons.account_box),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text("hai"),
                trailing: Icon(Icons.account_box),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text("hai"),
                trailing: Icon(Icons.account_box),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text("hai"),
                trailing: Icon(Icons.account_box),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text("hai"),
                trailing: Icon(Icons.account_box),
              ),
            ]
          ),)
        ],
      ),
    );
  }

}