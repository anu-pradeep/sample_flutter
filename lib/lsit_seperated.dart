 import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(
    useInheritedMediaQuery: true,
    debugShowCheckedModeBanner: false,
    home: seperated(),
  ));
}
class seperated extends StatelessWidget
{
  var name=["anu","nandana","anagha","appu"];
  var images=["assets/humanhead.png","assets/image.png","assets/humanhead.png","assets/image.png"];
  var phone=["111","222","333","444"];
  var colors=[Colors.greenAccent,Colors.purpleAccent,Colors.blue[200],Colors.red[300]];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: ListView.separated(itemBuilder:(context,index)
         {
           return Card(color: colors[index],
           child: ListTile(
             leading: Image(image: AssetImage(images[index]),),
             title: Text(name[index]),
             subtitle: Text(phone[index]),
             trailing: Icon(Icons.access_alarm),
           ),);
         },
         separatorBuilder: (context,index){
       return Divider(
       thickness: 5,
       color: colors[index],
       );
   }, itemCount: images.length),
   );
  }

}