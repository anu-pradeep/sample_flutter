
import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(
    useInheritedMediaQuery: true,
    debugShowCheckedModeBanner: false,
    home: slivers(),
  ));
}
class slivers extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {return Scaffold(
    body: ListView.custom(childrenDelegate:SliverChildListDelegate((
    [
      ListTile(
        leading: CircleAvatar(backgroundImage: AssetImage("assets/image.png"),),
        title: Text("anu"),
        subtitle: Text("123"),
        trailing: Icon(Icons.pageview_rounded),
        ),
        ListTile(
        leading: CircleAvatar(backgroundImage: AssetImage("assets/image.png"),),
        title: Text("appu"),
        subtitle: Text("1223"),
        trailing: Icon(Icons.access_alarm),
        ),]
    )
  )
    ),);
  }
  }