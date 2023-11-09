import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: staggered(),
  ));
}
class staggered extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: SingleChildScrollView(
      child: StaggeredGrid.count(crossAxisCount: 4,
      children: [
        StaggeredGridTile.count(crossAxisCellCount: 2, mainAxisCellCount: 2,
            child:Container(color: Colors.blue,
            )
        ),
        StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 2,
            child: Container(color: Colors.black,
            )),
        StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount:1,
            child:Container(color: Colors.amber,
            )),
        StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 1,
            child: Container(color: Colors.purple,
            )),
        StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 2,
            child: Container(color: Colors.green,
            )),
        StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 2,
            child: Container(color: Colors.red,
            )),
      ],),
    )
  );
  }
}