import 'package:flutter/material.dart';
import 'package:sample_flutter/passing%20data/dummydata.dart';
import 'package:sample_flutter/passing%20data/productlist.dart';


void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: maindata(),
    routes: {
      "secondpage" : (context)=> productlist(),
    },
  ));
}
class maindata extends StatefulWidget
{
  @override
  State<maindata> createState() => datastate();
}
class datastate extends State<maindata> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(//backgroundColor: Colors.blueGrey,
        title: Text("product home",style: TextStyle(fontSize: 15,color: Colors.black),),
        centerTitle: true,
      ),
      body: ListView(
          children: dummyproducts.map((product)=>
              TextButton(onPressed: ()=> gotonext(context,product["Id"]),
                  child: Text("${product["Name"]}",
                  )))
              .toList()
      ),
    );
  }

  void gotonext(BuildContext context,product) {
    Navigator.of(context).pushNamed("secondpage",arguments:product);
  }
}