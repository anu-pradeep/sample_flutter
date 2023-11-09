import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: project(),
  ));
}
class project extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      children: [
        Card(color:Colors.amberAccent,
        child: Column(
          children: [
            SizedBox(height: 20,),
            Icon(Icons.home,size: 40,),
      SizedBox(height: 20,),
      Text("Home",style: TextStyle(fontWeight: FontWeight.bold),)
        ],
      ),
        ),
      Card(color: Colors.white60,
        child: Column(
          children: [
            SizedBox(height: 20,),
            Icon(Icons.email,size: 40,),
            SizedBox(height: 20,),
            Text("Email",style: TextStyle(fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    Card(color: Colors.lightGreen,
    child: Column(
    children: [
    SizedBox(height: 20,),
    Icon(Icons.alarm,size: 40,),
    SizedBox(height: 20,),
    Text("Alarm",style: TextStyle(fontWeight: FontWeight.bold),)
      ],
      ),),
      Card(color: Colors.pinkAccent,
        child: Column(
          children: [
            SizedBox(height: 20,),
            Icon(Icons.wallet,size: 40,),
            SizedBox(height: 20,),
            Text("wallet",style: TextStyle(fontWeight: FontWeight.bold),)
          ],
        ),),
      Card(color: Colors.teal,
        child: Column(
          children: [
            SizedBox(height: 20,),
            Icon(Icons.backup,size: 40,),
            SizedBox(height: 20,),
            Text("Backup",style: TextStyle(fontWeight: FontWeight.bold),)
          ],
        ),),
      Card(color: Colors.deepPurpleAccent,
        child: Column(
          children: [
            SizedBox(height: 20,),
            Icon(Icons.book,size: 40,),
            SizedBox(height: 20,),
            Text("Book",style: TextStyle(fontWeight: FontWeight.bold),)
          ],
        ),),
      Card(color: Colors.white38,
        child: Column(
          children: [
            SizedBox(height: 20,),
            Icon(Icons.camera_alt_outlined,size: 40,),
            SizedBox(height: 20,),
            Text("Camera",style: TextStyle(fontWeight: FontWeight.bold),)
          ],
        ),),
      Card(color: Colors.green,
        child: Column(
          children: [
            SizedBox(height: 20,),
            Icon(Icons.person,size: 40,),
            SizedBox(height: 20,),
            Text("Person",style: TextStyle(fontWeight: FontWeight.bold),)
          ],
        ),),
      Card(color: Colors.green,
        child: Column(
          children: [
            SizedBox(height: 20,),
            Icon(Icons.print,size: 40,),
            SizedBox(height: 20,),
            Text("Print",style: TextStyle(fontWeight: FontWeight.bold),)
          ],
        ),),
      Card(color: Colors.blueAccent,
        child: Column(
          children: [
            SizedBox(height: 20,),
            Icon(Icons.phone,size: 40,),
            SizedBox(height: 20,),
            Text("Phone",style: TextStyle(fontWeight: FontWeight.bold),)
          ],
        ),),
      Card(color: Colors.deepOrange,
        child: Column(
          children: [
            SizedBox(height: 20,),
            Icon(Icons.speaker_notes,size: 40,),
            SizedBox(height: 20,),
            Text("Notes",style: TextStyle(fontWeight: FontWeight.bold),)
          ],
        ),),
      Card(color: Colors.pink,
        child: Column(
          children: [
            SizedBox(height: 20,),
            Icon(Icons.music_note,size: 40,),
            SizedBox(height: 20,),
            Text("Music",style: TextStyle(fontWeight: FontWeight.bold),)
          ],
        ),),
    ],),);
  }

}