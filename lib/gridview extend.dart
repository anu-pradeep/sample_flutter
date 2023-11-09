import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: (gridextendonly()),
  ));
}
 class gridextendonly extends StatelessWidget
 {
   var images=["assets/dolphin.png","assets/dolphin.png","assets/dolphin.png","assets/dolphin.png","assets/dolphin.png","assets/dolphin.png","assets/dolphin.png","assets/dolphin.png"];
   var name=["first","second","third","fourth","first","second","third","fourth"];
   var rate=["1","2","3","4","1","2","3","4"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:GridView.extent(maxCrossAxisExtent: 200,
      children: List.generate(8, (index)
      {
        return Card(
          child: Column(
            children: [
              Image(image: AssetImage(images[index]),height: 100,width: 100,),
               Row(
                children: [
                  Text(name[index]),
                  SizedBox(height: 50,width: 50,),
                  Text(rate[index])
                ],
              ),
            ],
          ),
        );
      },),),
    );
  }

 }