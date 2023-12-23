import 'package:flutter/material.darT';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
  void main()
  async
{
  WidgetsFlutterBinding.ensureInitialized(); // for check initialisation
  //hive initialisation
  await Hive.initFlutter();
  await Hive.openBox("task_box");// hive nte database open chyyn "taskbox" hive nte name
runApp(MaterialApp(home: hiveeg(),
debugShowCheckedModeBanner: false,));
}
  class hiveeg extends StatefulWidget
{
  @override
  State<StatefulWidget> createState()=>Hivestate();
}
  class Hivestate extends State<hiveeg> {
  List<Map<String, dynamic>> task = [];
  final tbox= Hive.box("task_box");                   // this is the obj for hive database (tbox)
  @override
  void initState() {                                 // state nth aanenn paranj kodukkan
    viewtask();                                      // to view added data
    super.initState();
  }
  Future<void> addtask (Map<String, dynamic> task)   // to add
  async {
  await tbox.add(task);
  viewtask();
}
  void viewtask()
  {
    final data= tbox.keys.map((id) {
      final value = tbox.get(id);
      return {'key': id, 'name': value['name'], 'details':value['details']};
    }).toList();
    setState(() {
      task=data.reversed.toList();
    });
  }
  Future<void> updatetask(int key, Map<String, dynamic> uptask) async
  {
await tbox.put(key, uptask);
viewtask();
  }
  Future<void> deleteform(int key) async {
    await tbox.delete(key);
    viewtask();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("To Do",style: GoogleFonts.aBeeZee(color: Colors.black),),backgroundColor: Colors.deepPurple,),
      body: task.isEmpty ?
      Center(
        child: Text("no data",style: GoogleFonts.abel(fontSize: 30),),
      ) :
      ListView.builder(
          itemCount: task.length,
          itemBuilder: (context, index) {
            return Card(color: Colors.cyan[200],
              child: ListTile(
                title: Text(task[index]["name"],style: GoogleFonts.abel(fontWeight: FontWeight.bold),),
                subtitle: Text(task[index]["details"],style: GoogleFonts.abel(fontWeight: FontWeight.bold),),
                trailing: Wrap(
                  children: [
                    IconButton(onPressed: () {
                      showForm(context, task[index]["key"]);
                   },
                      icon: Icon(Icons.edit),),
                    IconButton(onPressed: () {
                      deleteform(task[index]["key"]);
                    }, icon: Icon(Icons.delete)),
                  ],
                ),
              ),
            );
          }
      ),
      floatingActionButton: FloatingActionButton( // button working
        onPressed: () => showForm(context, null),
        child: Icon(Icons.add),
        backgroundColor: Colors.deepPurple,
      ),);
  }

  final name_controller = TextEditingController();
  final details_controller = TextEditingController();

  void showForm(BuildContext context,int? id) async {
    if (id!=null)
      {
        final ex_task =task.firstWhere((element) =>element["key"]==id );
        name_controller.text=ex_task["name"];
        details_controller.text=ex_task["details"];
      }
    showModalBottomSheet(
        context: context,
        elevation: 5,
       isScrollControlled: true,
        builder: (context) {
          return Container(
            padding: EdgeInsets.only(
                //left: 10,  top: 10,right: 10,
                bottom: MediaQuery
                    .of(context)
                    .viewInsets
                    .bottom + 120
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 300),
              child: Column(
                children: [
                  TextFormField(
                    textInputAction: TextInputAction.next, // for working enter key
                    controller: name_controller,
                    // validator : (Name)
                // {
                //  if(Name!.isEmpty){return "field is mandatory";}
                //  else {return null;}
                // },
                    decoration: InputDecoration(
                      hintText: "name",hintStyle: GoogleFonts.aBeeZee(),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    controller: details_controller,
                    decoration: InputDecoration(
                      hintText: "details",hintStyle: GoogleFonts.aBeeZee(),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 30,),
                  ElevatedButton(
                    onPressed: () {
                    if(id==null)
                      {
                        addtask({'name' : name_controller.text, 'details': details_controller.text});
                      }
                    if(id!=null)
                      {
                        updatetask(id,{'name': name_controller.text,'details':details_controller.text});
                      }
                    name_controller.text = "";
                    details_controller.text = "";
                    Navigator.of(context).pop();
                  },
                    child: Text(id== null ? "create task": "update task"), // edit click cheyythal create maari update aavum
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  )
                ],
              ),
            ),
          );
        });
  }






}