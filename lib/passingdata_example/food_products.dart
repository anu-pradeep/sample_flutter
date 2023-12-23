import 'dart:js';
import 'package:flutter/material.dart';
import 'package:sample_flutter/passingdata_example/food_list_items.dart';
/*void main()
{
  runApp(MaterialApp(home: fooditems(),));
}*/
class fooditems extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    final Id = ModalRoute.of(context)?.settings.arguments;
    final food = dummyfoods.firstWhere((food) => food ["ITEM"]==Id);
    return Scaffold(backgroundColor: Colors.blueGrey,
      appBar: AppBar(backgroundColor: Colors.white12,
        title: Text("yummy foods",style: TextStyle(color: Colors.black),),),
      body: ListView(
        children: [
          Image.network(food["IMAGE"]),
          Padding(
            padding: const EdgeInsets.only(left: 200,),
            child: Text("${food["NAME"]}"),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 200),
            child: Text("${food["PRICE"]}"),
          ),
        ],
      ),
    );
  }

}