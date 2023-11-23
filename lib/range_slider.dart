import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){runApp(MaterialApp(debugShowCheckedModeBanner: false,home: rangeslide(),));}
class rangeslide extends StatefulWidget
{
  @override
  State<rangeslide> createState()=> rangeslidestate();
}
class rangeslidestate extends State<rangeslide>
{
  RangeValues _rangeValues = RangeValues(3, 8);
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("_Range slider example_",style: GoogleFonts.alata(fontSize: 20,color: Colors.black),),
     centerTitle: true,
     backgroundColor: Colors.blueGrey,),
     body: Container(
       color: Colors.green[100],
       child: Column(mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Text("Range values : ${_rangeValues.start} - ${_rangeValues.end}",style: GoogleFonts.alata(fontSize: 18),),
           RangeSlider(values: _rangeValues,
               onChanged: (newRange)
           {
             setState(() {
               _rangeValues= newRange;
             });
           },
           divisions: 10, // .___.___. this is division
         max: 10.0, // ending point
             min: 0.00, // starting point
           )

         ],
       ),
     ),
   );
  }

}