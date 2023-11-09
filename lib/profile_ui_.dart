import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main (){
  runApp(DevicePreview(builder: (BuildContext context)=>
      MaterialApp(useInheritedMediaQuery: true,debugShowCheckedModeBanner: false,
        home: Profileui(),
      )
  )
  );
}
class Profileui extends StatefulWidget{
  @override
  State<Profileui> createState() => _ProfileuiState();
}
class _ProfileuiState extends State<Profileui> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
        body: SafeArea(
        child: SingleChildScrollView(
        child:
        Container(
        child: Column(
        children: [
        Row(
        children: [
        Padding(
        padding: const EdgeInsets.only(left: 20,top: 25),
    child: Icon(Icons.arrow_back),
    ),
    Padding(
    padding: const EdgeInsets.only(left:300,top: 25),
    child: IconButton(onPressed: (){}, icon: SvgPicture.asset("svg_images/img.png",color: Colors.black,),),
    ),
    ],
    ),
          Padding(
            padding: const EdgeInsets.only(top: 70),
            child: SizedBox(width: 150,height: 150,
                child: ClipRRect(borderRadius: BorderRadius.circular(130),
                    child:
                    Image(image: AssetImage("assets/humandownload.jpg"),))),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 60,top: 30),
                child: Row(
                  children: [
                    Image(image: NetworkImage("https://ww2.freelogovectors.net/wp-content"
                        "/uploads/2023/03/facebook-logo-new-2019-freelogovectors.net_.png"),width: 75,height: 75,),
                    Image(image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/"
                        "thumb/5/53/Google_%22G%22_Logo.svg/1024px-Google_%22G%22_Logo.svg.png"),width: 55,height: 55,),
                    Image(image: NetworkImage("https://iconape.com/wp-content/png_logo_"
                        "vector/twitter-red-canada-logo.png"),width: 55,height: 55,),
                    Image(image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/7/78/WLA_icon_instagram.svg/300px-WLA_icon_instagram.svg.png"),width: 68,height: 68,),
                  ],
                ),
              ),
              Column(
                children: [
                  Text("anu_priya",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                  Text("@anu_z"),

                ],
              ),


            ],
          ),SizedBox(height: 20,),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(80),
              // boxShadow: [
              //   BoxShadow(offset: Offset(0,5),
              //   color: Colors.grey.withOpacity(.2) )
              // ],
            ),
            child: Column(
              children: [
                Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.blueGrey[100],),
                  child: ListTile(
                    title: Text("Privacy"),
                    leading: Icon(Icons.person),
                    trailing: Icon(Icons.arrow_forward),
                  ),width: 300,
                ),
                SizedBox(height: 20,),
                Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color:Colors.blueGrey[100],),
                  child: ListTile(
                    title: Text("Purchase History"),
                    leading: Icon(Icons.history),
                    trailing: Icon(Icons.arrow_forward),
                  ),width: 300,
                ),
                SizedBox(height: 20,),
                Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.blueGrey[100],),
                  child: ListTile(
                    title: Text("Help and Support"),
                    leading: Icon(Icons.help),
                    trailing: Icon(Icons.arrow_forward),
                  ),width: 300,
                ),
                SizedBox(height: 20,),
                Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.blueGrey[100],),
                  child: ListTile(
                    title: Text("Settings"),
                    leading: Icon(Icons.settings),
                    trailing: Icon(Icons.arrow_forward),
                  ),width: 300,
                ),
                SizedBox(height: 20,),
                Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.blueGrey[100],),
                  child: ListTile(
                    title: Text("Invite a friend"),
                    leading: Icon(Icons.insert_invitation),
                    trailing: Icon(Icons.arrow_forward),
                  ),width: 300,
                ),
                SizedBox(height: 20,),
                Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.blueGrey[100],),
                  child: ListTile(
                    title: Text("Scheduled content"),
                    leading: Icon(Icons.timer),
                    trailing: Icon(Icons.arrow_forward),
                  ),width: 300,
                ),
                SizedBox(height: 20,),
                Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.blueGrey[100],),
                  child: ListTile(
                    title: Text("Purchase History"),
                    leading: Icon(Icons.history),
                    trailing: Icon(Icons.arrow_forward),
                  ),width: 300,
                ),
                SizedBox(height: 20,),
                Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.blueGrey[100],),
                  child: ListTile(
                    title: Text("Purchase History"),
                    leading: Icon(Icons.history),
                    trailing: Icon(Icons.arrow_forward),
                  ),width: 300,
                ),
              ],
            ),

          ),

        ],
        ),
        ),
        ),
        ),
    );
  }
}
