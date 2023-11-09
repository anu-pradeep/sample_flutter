import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(
    useInheritedMediaQuery: true,
    debugShowCheckedModeBanner: false,
    home: gridlist(),
  ));
}
class gridlist extends StatelessWidget
{
  var images=["assets/SQUIRREL.png","assets/dolphin.png","assets/ostrich.png","assets/FOX.png","assets/FOX.png","assets/FOX.png"];
  var name=["first","second","third","fourth","fifth","sixth"];
  var rate=["10","20","30","40","50","60"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      children:  List.generate(6, (index)
      {
        return Card(
          child: Column(
            children: [
              Image(image: AssetImage(images[index]),height: 150,width: 150,),
              SizedBox(height: 50),
              Row(
                children: [
                 // SizedBox(height: 50),
                  Padding(
                    padding: const EdgeInsets.only(left: 65),
                    child: Text(name[index],style: TextStyle(fontSize: 25),),

                  ),
                ],
              ),
            ],
          ),
        );
      },
      ),),
    );
  }

}