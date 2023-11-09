import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(
    useInheritedMediaQuery: true,
    debugShowCheckedModeBanner: false,
    home: listbuilder(),));
}
class listbuilder extends StatelessWidget
{var name=["anu","appu","arju"];
  var images=["assets/humanhead.png","assets/image.png","assets/ostrich.png"];
  //var icons=[Icons.access_alarm]; for icons
var phone=["123","456","789"];  //for mob num
 var color=[Colors.blue,Colors.red,Colors.black12];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (context,index)
    {
      return Card(color: color[index],
      child: ListTile(leading: Image(image: AssetImage(images[index]),),
      title: Text(name[index]),
        subtitle: Text(phone[index]),
        trailing: Icon(Icons.call),
      ),
      );
    }, itemCount: name.length,),
    );
  }

}