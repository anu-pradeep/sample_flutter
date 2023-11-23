import 'package:flutter/material.dart';
import 'package:sample_flutter/passing%20data/dummydata.dart';
class productlist extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    final Id = ModalRoute.of(context)?.settings.arguments;
    final product = dummyproducts.firstWhere((product) => product["Id"]==Id);
    return Scaffold(
      appBar: AppBar(
        title: Text("product"),),
      body: ListView(
        children: [
          SizedBox(height: 100,width: 100,
          child:
            Image.network(product["Image"]),),
          Text("${product["Name"]}"),
          Text("${product["Description"]}"),

        ],
      ),
    );
  }

}