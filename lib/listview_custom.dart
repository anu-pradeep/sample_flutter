import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(
    useInheritedMediaQuery:true ,
  debugShowCheckedModeBanner: false,
  home: custom(),));
}
class custom extends StatelessWidget
{ var name=["anu","appu","arju"];
var images=["assets/humanhead.png","assets/image.png","assets/ostrich.png"];
var phone=["123","456","789"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.custom(childrenDelegate: SliverChildBuilderDelegate((context,index)
    {
      return Card(color: Colors.white38,
      child: ListTile(
        leading:CircleAvatar(backgroundImage: AssetImage(images[index])),
        title: Text(name[index]),
        subtitle: Text(phone[index]),
      ),);
    },childCount: name.length,
      ),
    ));
  }

}