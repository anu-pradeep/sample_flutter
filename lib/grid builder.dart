import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: gridbuilder(),
  ));
}
class gridbuilder extends StatelessWidget
{
  var images=["assets/SQUIRREL.png","assets/dolphin.png","assets/ostrich.png","assets/FOX.png","assets/FOX.png","assets/FOX.png"];
  var name=["first","second","third","fourth","fifth","sixth"];
  var rate=["1","2","3","4","5","6"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder: (context,index)
      {
        return Card(
          child: Column(
            children: [
              Image(image: AssetImage(images[index]),height: 100,width: 100,),
              Row(
                children: [
                  //SizedBox(height: 40,),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(name[index],style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
                  ),
              SizedBox(width: 50,),

              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(rate[index],style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              ),
            ],
          ),
        ],
        ),);
      },itemCount: images.length,),
    );
  }

}