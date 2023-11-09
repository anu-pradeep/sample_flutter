import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: drawyer(),
  ));
}
class drawyer extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("drawyer sample",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(accountName: Text("ANUPRIYA"), accountEmail: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right:10,top: 5),
                  child: Text("anupriyapradeepanus@gmail.com"),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 130,top: 10),
                  child: Text("1000 Following"),
                ),
              ],
            ),
            currentAccountPicture: CircleAvatar(backgroundImage: AssetImage("assets/img.png"),),
            otherAccountsPictures: [
              CircleAvatar(backgroundImage: AssetImage("assets/humanhead.png"),),
              CircleAvatar(backgroundImage: AssetImage("assets/person.png"),),
            ],),
            ListTile(leading: Icon(Icons.star),title: Text("stared"),
            ),
            ListTile(
              leading: Icon(Icons.schedule),title: Text("scheduled"),
            ),
            ListTile(leading: Icon(Icons.send),title: Text("send"),
            ),
            ListTile(leading: Icon(Icons.outbox),title: Text("outbox"),
            ),
            ListTile(leading: Icon(Icons.drafts),title: Text("drafts"),
            ),
            Divider(thickness: 0.5,color: Colors.black),
            ListTile(leading: Icon(Icons.mail_lock_rounded),title: Text("mails"),
            ),
            ListTile(leading: Icon(Icons.error),title: Text("spam"),
            ),
            ListTile(leading: Icon(Icons.delete),title: Text("bin"),
            ),
            Divider(thickness: 0.5,color: Colors.black),
            ListTile(leading: Icon(Icons.calendar_month_outlined),title: Text("calendar"),
            ),
            ListTile(leading: Icon(Icons.contact_page_outlined),title: Text("contacts"),
            ),
          ],
        ),
      ),
    );
  }

}