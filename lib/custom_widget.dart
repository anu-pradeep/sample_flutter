import 'package:flutter/material.dart';

class customwidget extends StatelessWidget
{
 final Text ? text;
  final Image ? image;
  final Color ? colors;
  VoidCallback ? onpress;
  customwidget({this.text,this.image,this.colors,required this.onpress});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Card(
  color: colors,
  child: ListTile(
    leading: image,
    title: text,
    onTap: onpress,

  ),

),
    );
  }

}