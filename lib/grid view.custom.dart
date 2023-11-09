import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: gridcustom(),
  ));
}
class gridcustom extends StatelessWidget
{
  var images=["assets/dolphin.png","assets/dolphin.png","assets/dolphin.png","assets/dolphin.png","assets/dolphin.png"];
  var name=["anu","anu","anu","anu","anu",];
  var rate=["1","2","3","4","5"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
          mainAxisSpacing:20,crossAxisSpacing: 20),
          childrenDelegate:SliverChildBuilderDelegate((context,index)
      {/* return Card(
        child: ListTile(
          leading: CircleAvatar(backgroundImage: AssetImage(images[index]),),
          title: Text(name[index],style: TextStyle(fontStyle:FontStyle.italic,fontSize: 21),),
          subtitle: Text(rate[index]),
          trailing: Icon(Icons.account_circle_outlined),
        ),
      );*/
return Container(
  color: Colors.blueGrey,
  child: Column(
    children: [Expanded(child: Image(image: AssetImage(images[index]),fit: BoxFit.fill)),
    SizedBox(height: 20,),
     Row(
       children: [
         SizedBox(width: 80,),
         Text(name[index],style: TextStyle(fontStyle: FontStyle.italic,color: Colors.black),),
         SizedBox(width: 25,),
         Text(rate[index],style: TextStyle(fontStyle: FontStyle.italic),),
       ],
     ),
    ],
  ),
);
      },childCount: name.length,),
    ),);
  }

}