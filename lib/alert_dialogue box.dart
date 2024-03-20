import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FirstPage(),
  ));
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => Alert(),
            );
          },
          child: Text("Alert", style: TextStyle(color: Colors.black)),
        ),
      ),
    );
  }
}

class Alert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Exit"),
      content: Text("Do you want to exit!"),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(); // Clicking 'Yes' closes the alert box
          },
          child: Text("Yes"),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(); // Clicking 'No' closes the alert box
          },
          child: Text("No"),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(); // Clicking 'Cancel' closes the alert box
          },
          child: Text("Cancel"),
        ),
      ],
    );
  }
}

// import 'package:flutter/material.dart';
// void main()
// {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: alert(),
//   ));
// }
// class alert extends StatefulWidget
// {
//   @override
//   State<alert> createState() => AlertState();
// }
// class AlertState extends State<alert>
// {
//   @override
//   Widget build(BuildContext context) {
//    return Scaffold(
//      body:Center(
//        child: ElevatedButton(//style:ElevatedButton.styleFrom(backgroundColor:Color(colors.))),
//          onPressed: (){
//            showDialog(context: context, builder: (context){
//              return AlertDialog(
//                title: Text("Exit"),
//                content: Text("Do you want to exit !"),
//                actions: [
//                  TextButton(onPressed: (){
//                    Navigator.of(context).pop();   // click chythal alert box cancel aavan
//                  }, child: Text("Yes"),),
//                  TextButton(onPressed: (){
//                    Navigator.of(context).pop();
//                  }, child: Text("No")),
//                  TextButton(onPressed: (){
//                    Navigator.of(context).pop();
//                  }, child: Text("Cancel")),
//                ],
//              );
//            });
//          }, child: Text("Alert",style: TextStyle(color: Colors.black),),
//        ),
//      )
//    );
//   }
//
// }