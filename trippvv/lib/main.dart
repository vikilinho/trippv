import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController;
  int totalPage = 4;
  void onScroll(){

  }

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
    )..addListener((onScroll));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController ,
        children: <Widget>[
         makePage(image:'images/evgeny.jpg', title: "Japan", description: " A beautiful Japanese home based in Tokyo", page: 1),
         makePage(image:'images/irina.jpg', title: "Germany", description: " A beautiful display of houses on the street of Berlin", page: 2),
         makePage(image:'images/norway.jpg' ,title: "Norway", description: "Have you ever been to Norway? The beautiful city has some many things for you to explore", page: 3),
         makePage(image:'images/paris.jpg',  title: "Paris", description: " Welcome to Paris, a city rated the most beautiful in the world", page: 4),
        ],
      ),
    );
   
  }
   Widget makePage({image, title, description, page}) {
      return Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image),
          fit: BoxFit.cover),
        ),
        child: Container(
          decoration: BoxDecoration(
          
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              stops: [0.3,0.9],
              colors: [
              
              Colors.black.withOpacity(.8),
              Colors.black.withOpacity(.2)
            ]) ),
            child: Padding( padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 20
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(page.toString(), style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Text("/" + totalPage.toString(), style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold))
                    ],
                  ),
                  Expanded(child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                    Text(title, style: TextStyle(fontSize: 35, color: Colors.white, fontWeight: FontWeight.bold)),
                  ],)),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(right: 3),
                        child: Icon(Icons.star, color: Colors.yellow, size: 15) ,),
                        Container(
                        margin: EdgeInsets.only(right: 3),
                        child: Icon(Icons.star, color: Colors.yellow, size: 15) ,),
                        Container(
                        margin: EdgeInsets.only(right: 3),
                        child: Icon(Icons.star, color: Colors.yellow, size: 15) ,),
                        Container(
                        margin: EdgeInsets.only(right: 3),
                        child: Icon(Icons.star, color: Colors.yellow, size: 15) ,),
                        Container(
                        margin: EdgeInsets.only(right: 5),
                        child: Icon(Icons.star, color: Colors.grey, size: 15) ,),
                        Text("4.0", style: TextStyle( fontSize: 20, color: Colors.white)),
                        Text("(5000)", style: TextStyle( fontSize: 20, color: Colors.white)),
                        
                    ],
                  ),
                  SizedBox(
                          height: 20
                        ),
                        Text(description, style: TextStyle(fontSize: 20, color: Colors.white),),
            ],),),
        ),

      );
      

    }
}
