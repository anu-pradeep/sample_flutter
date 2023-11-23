import 'package:flutter/material.dart';
import 'package:sample_flutter/passingdata_example/login_foodscreen.dart';
void main(){runApp(MaterialApp(home: tabbarr(),));}
class tabbarr extends StatefulWidget
{
  @override
  State<tabbarr> createState()=> tabbarstate();
}
class tabbarstate extends State<tabbarr>
{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body:CustomScrollView(
       slivers: [SliverAppBar(
         title: Text("TAB BAR AND BOTTOM UI"),
       bottom: AppBar(bottom: Column(),
       )
         ),
       ],

     ),
   );
  }

}