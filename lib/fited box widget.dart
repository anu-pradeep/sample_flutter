import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main()
{
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: fitted(),));
}
class fitted extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.indigoAccent,centerTitle: true,toolbarHeight: 100,
        title: Text("fitted Box Widget",style: GoogleFonts.aladin(fontWeight:FontWeight.bold,fontSize: 20,color: Colors.black),),),
      body: ListView(
        children: [
          FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.bottomCenter,
            child: Container(
              child: Row(
                children: [
                  Container(
                    height: 300,width: 300,
                    child: Image.network("https://images.pexels.com/photos/1269674/pexels-photo-1269674.jpeg?auto=compress&cs=tinysrgb&w=600"),
                  ),
                  Container(
                    child: Text(" Sample Text",style: GoogleFonts.aladin(fontSize: 20),),
                  )
                ],
              ),
            ),
          ),
        ],
      )
    );
  }

}