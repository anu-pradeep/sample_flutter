import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: datatable(),
  ));
}
class datatable extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Padding(
       padding: const EdgeInsets.only(top: 80,left: 10),
       child: Container(color: Colors.blueGrey,
         child:  DataTable(columns: [
           DataColumn(label: Text("NAME",style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold),)),
           DataColumn(label: Text("AGE",style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold),)),
           DataColumn(label: Text("COURSE",style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold),)),
           DataColumn(label: Text("SALARY",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,color: Colors.black),)),
         ], rows: [
           DataRow(cells: [DataCell(Text("Anu"),),
             DataCell(Text("27"),),
             DataCell(Text("Flutter")),
             DataCell(Text("25000")),
       ],),
             DataRow(cells: [DataCell(Text("Arjun"),),
               DataCell(Text("28"),),
               DataCell(Text("Flutter")),
               DataCell(Text("27000")),
             ],),
             DataRow(cells: [DataCell(Text("Aswanth"),),
               DataCell(Text("24"),),
               DataCell(Text("Flutter")),
               DataCell(Text("26000")),
             ],),],
         ),
       ),
     ),
   );
  }

}