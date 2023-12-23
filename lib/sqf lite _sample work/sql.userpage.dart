import 'package:flutter/material.darT';
import 'package:google_fonts/google_fonts.dart';
//void main(){runApp(MaterialApp(home: sqluser(),));}
class sqluser extends StatelessWidget
{
  final data;
  sqluser({Key ? key,required this.data}): super(key: key); // data pass
  @override
  Widget build(BuildContext context) {
    var name  = data[0]['name'];
  return Scaffold(backgroundColor: Colors.deepPurple[200],
    appBar: AppBar(title: Text("welcome $name"),),
  body: Center
    (
    child: Text("success"),
  ),);
  }
}