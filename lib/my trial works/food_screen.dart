import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main()
{
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  home: foodscreen(),
  useInheritedMediaQuery: true,));
}
class foodscreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.blue[100],
      appBar: AppBar(leading: Icon(Icons.menu,color: Colors.black,),
        title: Text("Home Screen",style: GoogleFonts.abel(fontSize: 25,color: Colors.black),),
      backgroundColor: Colors.orange[400],
      actions: [IconButton(onPressed: (){}, icon: Icon(Icons.lock_clock_sharp,color: Colors.black,))],),
      body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 0,crossAxisSpacing: 0),
      children: [
        Card(color: Colors.purpleAccent,
        child:Column(
          children: [
            Image(image: AssetImage("assets/burger.png"),height: 150,width: 100,),
            Text("BURGER",style: GoogleFonts.abel(fontSize: 20,fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 90),
                  child: Icon(Icons.star,size: 15,),
                ),Icon(Icons.star,size: 15,),Icon(Icons.star,size: 15,),Icon(Icons.star,size: 15,),

              ],

            ),SizedBox(height: 10,),
            Text(" 150.00",style: TextStyle(fontSize: 15),),
          ],
        ),
        ),
        Card(color: Colors.lightBlue[300],
          child: Column(children: [
            Image(image: AssetImage("assets/beer.png"),height: 150,width: 100,),
            Text("BEER",style: GoogleFonts.abel(fontSize: 20,fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 90),
              child: Row(
                children:[
              Icon(Icons.star,size: 15,),Icon(Icons.star,size: 15,),Icon(Icons.star,size: 15,),Icon(Icons.star,size: 15,),
          ],),
            ),SizedBox(height: 10,),
          Text("580.00",style: TextStyle(fontSize: 15),)],)
        ),
        Card(
          color: Colors.orange[300],
          child: Column(
            children: [
              Image(image: AssetImage("assets/soup.png"),height: 150,width: 100,),
              Text("SOUP",style: GoogleFonts.abel(fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 90),
                child: Row(
                  children: [
                    Icon(Icons.star,size: 15,),Icon(Icons.star,size: 15,),Icon(Icons.star,size: 15,),Icon(Icons.star,size: 15,),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Text("250.00")
            ],),),
        Card(color: Colors.green,
          child: Column(
          children: [Image(image: AssetImage("assets/softdrink.png"),height: 150,width: 100,),
          Text("SOFT DRINK",style: GoogleFonts.abel(fontWeight: FontWeight.bold,fontSize: 20),),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 90),
            child: Row(
              children: [
                Icon(Icons.star,size: 15,),Icon(Icons.star,size: 15,),Icon(Icons.star,size: 15,),Icon(Icons.star,size: 15,),
              ],
            ),
          )
          ],
        ),),
        Card(color: Colors.indigo[600],
          child: Column(
            children: [
              //Image(image: AssetImage(""))
            ],
          ),
        ),
        Card(color: Colors.red,
        child: Column(
          children: [
            
          ],
        ),)
      ],)
    );
  }

}
