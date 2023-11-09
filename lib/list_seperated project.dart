import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: seperated(),
  ));
}
class seperated extends StatelessWidget
{
  var name=["listview","screen","display","android","project","builder","sample","chrome","images","delete","power","login"];
  var text=["seperator","seperator1","seperator2","seperator3","seperator4","seperator5","seperator6","seperator7","seperator8","seperator9","seperator10","seperator11"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("listview seperated()"), backgroundColor: Colors.green,
      ),
      body: ListView.separated(itemBuilder: (context,index)
          {
            return Card(color: Colors.white,
              child: ListTile(
                title: (Text(name[index],style: GoogleFonts.aBeeZee(),)),),
            );},
          separatorBuilder: (context,index)
          {
            return Container(
              child: Text(text[index],style:TextStyle(fontSize: 15),),
              color: Colors.blueGrey,
            );
          }, itemCount: name.length),

    );
  }

}