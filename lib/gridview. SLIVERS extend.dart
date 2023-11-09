import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: gridextend(),
  ));
}

class gridextend extends StatelessWidget {
  var images = [
    "assets/SQUIRREL.png",
    "assets/dolphin.png",
    "assets/ostrich.png",
    "assets/FOX.png",
    "assets/FOX.png",
    "assets/FOX.png",
    "assets/dolphin.png",
    "assets/dolphin.png",
    "assets/ostrich.png",
    "assets/ostrich.png"
  ];
  var name = [
    "first",
    "second",
    "third",
    "fourth",
    "fifth",
    "sixth",
    "sixth",
    "sixth",
    "sixth",
    "sixth",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView(
      gridDelegate:
          SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 300,crossAxisSpacing: 20,mainAxisSpacing: 20),
      children: List.generate(
        10,
        (index) {
          return Card(
            child: Column(
              children: [
                Image(
                  image: AssetImage(images[index]),height: 160,width: 160,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(name[index]),
                ),
              ],
            ),
          );
        },
      ),
    ));
  }
}
