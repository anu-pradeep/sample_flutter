import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: flexiwidget(),
  ));
}
class flexiwidget extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("flexible widget example",style: TextStyle(fontWeight: FontWeight.bold),),centerTitle: true,),
      body:Column(
        children: [
          Flexible(
              flex:2,
              child: Container(height: 100,color: Colors.black,)),
          Row(
            children: [
              Flexible(flex: 3,
                  child: Container(color: Colors.blue,height: 150,width: 250,),),Container(color: Colors.yellow,height: 150,width: 100,),Container(color: Colors.purple,
              height: 150,width: 153,)
            ],
          ),
          Row(
            children: [Flexible(child: Container(color: Colors.green,width: 200,height: 150,)),Container(color: Colors.purpleAccent,height: 150,width: 200,),
            Container(color: Colors.blueGrey,height: 150,width: 200,)],
          ),
         Row(
           children: [Flexible(
               flex: 2,child: Container(color: Colors.red,height: 100,))],
         )
        ],
      )
    );
  }

}