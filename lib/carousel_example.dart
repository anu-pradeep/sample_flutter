import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: carousel(),
  ));
}
class carousel extends StatelessWidget
{
var index=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(backgroundColor: Colors.green,
            title: Text("FARMERS FRESH ZONE"),
            expandedHeight:150,
            pinned: true,floating: true,
            actions: [
IconButton(onPressed: (){}, icon: Icon(Icons.location_on_outlined),),
              Padding(
                padding: const EdgeInsets.only(top: 19,right: 30),
                child: Text("Kochi"),
              ),
            ],
            bottom: AppBar(elevation: 0,
              backgroundColor: Colors.green,
              title: Container(
                decoration: BoxDecoration(color: Colors.white,
                ),
                child: TextField(decoration: InputDecoration(prefixIcon: Icon(Icons.search),
                  hintText: "Search for vegitable and fruits",
                  border: InputBorder.none,
                ),
                ),
              ),
            ),
          ),
      SliverList(delegate: SliverChildListDelegate([
        SizedBox(height: 10,),
        Row(
          children: [

            Padding(
              padding: const EdgeInsets.only(left: 05),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.greenAccent),
                  borderRadius: BorderRadius.all(Radius.circular(20),),
                ),child: Center(child: Text("VEGITABLES",style: TextStyle(color: Colors.greenAccent),)),height: 30,width: 120,
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.greenAccent),
                  borderRadius: BorderRadius.all(Radius.circular(20),),),
                child: Center(child: Text("FRUITS",style: TextStyle(color: Colors.greenAccent),)),height: 30,width: 120,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.greenAccent),
                borderRadius: BorderRadius.all(Radius.circular(20),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.greenAccent),
                  borderRadius: BorderRadius.all(Radius.circular(20),),
                ),child: Center(child: Text(" EXOTIC CUTS",style: TextStyle(color: Colors.greenAccent),)),height: 30,width: 130,
              ),
            )

          ],
        ),
        SizedBox(height: 20,),
        CarouselSlider(items: [
          Container(margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0)
                ,image: DecorationImage(image: NetworkImage(   "https://cdn.pixabay.com/photo/2015/06/02/12/59/book-794978_640.jpg",
                ),fit: BoxFit.cover)),
          ),
          Container(margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0)
                ,image: DecorationImage(image: NetworkImage(    "https://cdn.pixabay.com/photo/2015/07/27/20/16/book-863418_1280.jpg",
                ),fit: BoxFit.cover)),
          ),
          Container(margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0)
                ,image: DecorationImage(image: NetworkImage(    "https://cdn.pixabay.com/photo/2015/12/19/20/32/paper-1100254_640.jpg",
                ),fit: BoxFit.cover)),
          ),
          Container(margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0)
                ,image: DecorationImage(image: NetworkImage(    "https://cdn.pixabay.com/photo/2014/08/16/18/17/book-419589_640.jpg",
                ),fit: BoxFit.cover)),
          ),
          Container(margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0)
                ,image: DecorationImage(image: NetworkImage(    "https://cdn.pixabay.com/photo/2018/01/04/09/39/love-story-3060241_640.jpg",
                ),fit: BoxFit.cover)),
          ),
        ], options: CarouselOptions(
            aspectRatio: 2.0,
            enlargeCenterPage: true,
            enableInfiniteScroll: false,
            initialPage: 2,
            autoPlay: true,
            autoPlayCurve: Curves.bounceOut,
            autoPlayAnimationDuration: Duration(microseconds: 800)
        )),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.only(left: 11,right: 11),
          child: Container(decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
          ),width: 100,height: 100,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25,top: 7),
                  child: Column(
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.alarm),),
                      Text("30 mins policy"),]),
                ),
                    Padding(
                      padding: const EdgeInsets.only(left: 60,top: 7),
                      child: Column(children:[
                      IconButton(onPressed: (){}, icon: Icon(Icons.track_changes),),
                      Text("Tracebility"),
                  ],),),
                Padding(
                  padding: const EdgeInsets.only(left: 80,top: 7),
                  child: Column(
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.local_convenience_store_outlined),),
                      Text("Local sourroundings"),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
      ),
      ),SliverList(delegate: SliverChildListDelegate([
        Vegitables(),
          ]))]
    ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.green,
        currentIndex: index,
        type: BottomNavigationBarType.fixed,


        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: "Account"),

        ],
      ),
    );

  }}
class Vegitables extends StatelessWidget{

  List<String> image=[
    "https://images.news18.com/ibnlive/uploads/2021/08/tomato1-16299798893x2.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROvtRXHaAOMuDO_2oW95H17oDFf6zyfJ1fpA&usqp=CAU",
    "https://images.news18.com/ibnlive/uploads/2021/08/tomato1-16299798893x2.jpg",
    "https://nationaltoday.com/wp-content/uploads/2021/06/National-Herbs-and-Spices-Day-1-640x514.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGnnQcNCeHzbkq9lu8hm_yj4EC9tvk4_5_TA&usqp=CAU", "https://images.news18.com/ibnlive/uploads/2021/08/tomato1-16299798893x2.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROvtRXHaAOMuDO_2oW95H17oDFf6zyfJ1fpA&usqp=CAU",
  ];
  List<String> name=[
    "Tomato","Pappaya","Tomato","apple","Carrot","onion"
  ];


  @override
  Widget build(BuildContext context) {
    return  GridView.builder(
      shrinkWrap: true,
      padding: const EdgeInsets.all(10.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 5,crossAxisSpacing: 5),

      itemBuilder: (context, index){


        return Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // height: 90,
                //width: 120,
                height: MediaQuery.of(context).size.height /12,
                width: MediaQuery.of(context).size.width * .6,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 20.0,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(image[index]),),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(name[index]),
            ],
          ),
        );
      },itemCount: name.length,);

  }

}