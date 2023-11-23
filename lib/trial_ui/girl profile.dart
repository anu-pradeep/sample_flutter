import 'package:flutter/material.dart';
void main(){runApp(MaterialApp(home: girlprofile(),debugShowCheckedModeBanner: false,));}
class girlprofile extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body: CustomScrollView(
      slivers: [
        SliverAppBar(
          floating: true,expandedHeight: 10, pinned: true,
          elevation: 0,
          centerTitle: true,//toolbarHeight: 10,
          //title: Text("my profile"),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 450),
              child: Icon(Icons.lens_outlined),
            ),
          ],
        ),
      ],
    ),
   );
  }

}