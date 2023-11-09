import 'package:flutter/material.dart';

void main()
{
runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: grid(),
));
}
class grid extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      children: [
        Card(
          child: Image(image: AssetImage("assets/raccon.png"),),
        ),
        Card(
          child: Image(image: AssetImage("assets/raccon.png"),),
        ),
        Card(
          child: Image(image: AssetImage("assets/raccon.png"),),
        ),
        Card(
          child: Image(image: AssetImage("assets/raccon.png"),),
        ),
        Card(
          child: Image(image: AssetImage("assets/raccon.png"),),
        ),
        Card(
          child: Image(image: AssetImage("assets/raccon.png"),),
        ),
        Card(
          child: Image(image: AssetImage("assets/raccon.png"),),
        ),
        Card(
          child: Image(image: AssetImage("assets/raccon.png"),),
        ),
        Card(
          child: Image(image: AssetImage("assets/raccon.png"),),
        ),
        Card(
          child: Image(image: AssetImage("assets/raccon.png"),),
        ),
      ],),
    );
  }

}