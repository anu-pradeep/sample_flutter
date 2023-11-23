import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: placeholder(),
  ));
}
class placeholder extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: Text("place holder widget"),),

    body: GridView.builder(
      padding: EdgeInsetsDirectional.symmetric(horizontal: 20,vertical: 20),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 2),
        itemBuilder: (context,index)
      {
        return placeholder();
      }
    ),
  );
  }

}
