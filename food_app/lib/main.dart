import 'package:flutter/material.dart';
import 'package:food_app/functional_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  List<String> imgUrl = [
  "https://purepng.com/public/uploads/large/purepng.com-food-platefood-meat-plate-tasty-grill-breakfast-dinner-french-fries-launch-941524624270veqpm.png",
  "https://toreys.net/wp-content/uploads/2019/06/steak-fries-400x209-reduced.png",
  "https://pngimage.net/wp-content/uploads/2018/06/sizzler-png-4.png",
  "https://pngimage.net/wp-content/uploads/2018/06/sizzler-png-3.png",
  "https://pngimage.net/wp-content/uploads/2018/06/sizzler-png-2.png",
  "https://pngimage.net/wp-content/uploads/2018/06/sizzler-png-8.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Food App',
          style: TextStyle(
            fontSize: 24,
            color: Colors.orange,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          FlatButton(
            onPressed: () {},
            child: Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
          ),
        ],
        leading: FlatButton(
          onPressed: () {},
          child: Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Let's Eat\nOrder Your Food Now",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.blueGrey[100],
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search...',
                        hintStyle:
                            TextStyle(fontSize: 17, color: Colors.black),
                        border: InputBorder.none,
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      ),
                    ),
                  ),
                  RaisedButton(
                    color: Colors.orangeAccent[200],
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 0.9,
              children: [
                foodCard(imgUrl[0],'20','Kabab'),
                foodCard(imgUrl[1],'30','Dolma'),
                foodCard(imgUrl[2],'40','Sushi'),
                foodCard(imgUrl[3],'50','Steak'),
                foodCard(imgUrl[4],'60','Plov'),
                foodCard(imgUrl[5],'70','Katlet'),
                foodCard(imgUrl[0],'20','Kabab'),
                foodCard(imgUrl[1],'30','Dolma'),
                foodCard(imgUrl[2],'40','Sushi'),
                foodCard(imgUrl[3],'50','Steak'),
                foodCard(imgUrl[4],'60','Plov'),
                foodCard(imgUrl[5],'70','Katlet'),

              ],
            ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 0,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.orange[800],
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            label: 'Shopping',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Person',
          ),
        ],
      ),
    );
  }
}
