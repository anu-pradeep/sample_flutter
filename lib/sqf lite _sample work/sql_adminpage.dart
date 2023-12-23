import 'package:flutter/material.darT';
import 'package:google_fonts/google_fonts.dart';
import 'package:sample_flutter/sqf%20lite%20_sample%20work/sql.sample.helpercls.dart';
//void main(){runApp(MaterialApp(home: sqladmin(),));}
class sqladmin extends StatefulWidget
{
  @override
  State<sqladmin> createState() => adminstate();
}
class adminstate extends State<sqladmin>
{
  var data;
  Future<void> delete(int id)
  async {
    await helpersql.deleteuser(id);
    refresh();
  }
  @override
  void initState() {
   refresh();
    super.initState();
  }
  Future<void> refresh() async {
  var mydata= await helpersql.getAll();
  setState(() {
    data= mydata;
  });
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(backgroundColor: Colors.green[100],
     appBar: AppBar(title: Text("Admin home",style: GoogleFonts.abel(),),),
     body: ListView.builder(
       itemCount: data.length,
         itemBuilder:(context, int index) {
           return Card(
             color: Colors.deepPurple[200],
             child: ListTile(
               title: Text('${data[index]['name']}'),
               trailing: IconButton(onPressed: () {
                 delete(data[index]['id']);
               }, icon: Icon(Icons.delete),),
             ),
           );
         }),
   );
  }
}


