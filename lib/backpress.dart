import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: backpress(),
  ));
}
class backpress extends StatefulWidget
{
  @override
  State<backpress> createState()=> Backstate();
}
class Backstate extends State<backpress>
{
  @override
  Widget build(BuildContext context) {
    Future<bool> showExitpop() async {
      return await showDialog(context: context,
          builder: (context) =>
              AlertDialog(
                title: Text("Exit App",
                  style: TextStyle(color: Colors.red, fontSize: 20),),
                content: Text("Do you want to exit the App..?",
                  style: TextStyle(color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),),
                actions: [
                  ElevatedButton(
                    onPressed: () => Navigator.of(context).pop(true),
                    child: Text("yes"),
                  ),
                  ElevatedButton(
                      onPressed: () => Navigator.of(context).pop(false),
                      child: Text("no"))
                ],
              ));
    }
   return WillPopScope(
     onWillPop: showExitpop,
     child: Scaffold(
appBar: AppBar(backgroundColor: Colors.orange,
  title: Text("Override back button"),
),
     ),
   );
  }

}