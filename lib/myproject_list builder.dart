import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    useInheritedMediaQuery: true,
    debugShowCheckedModeBanner: false,
    home: listbuild(),
  ));
}

class listbuild extends StatelessWidget {
  var name = [
    "facebook",
    "A10 NETWORKS INC",
    "intel Crop",
    "HP Inc",
    "Advanced Micro devices Inc",
    "Apple Inc",
    "Amazon.com,Inc",
    "Microsoft Corporation",
    "whatsapp",
    "Instagram",
    "twetter",
    "purple",
    "mynthra",
    "ajio",
  ];
 var text=["H","A","I","H","A","A","A","M","W","I","T","P","M","A"];
 var value=["\$339.3","\$456.2","\$586.32","\$258.3","\$478.0","\$963.0","\$486.2","\$298.12","\$753.5","\$2793","\$456.2","\$586.0","\$201.3","\$542.36"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title:Text("listview builder"),),
        body: ListView.builder(itemBuilder: (context,index)
    {
      return Card(color: Colors.white,
      child: ListTile(leading: CircleAvatar(child: Text(text[index]),backgroundColor: Colors.cyanAccent,),
    title: Text(name[index],style: GoogleFonts.aladin(),),
    trailing: Text(value[index]),
    ),);
    }, itemCount: text.length ,
    ));
  }

}