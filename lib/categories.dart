import 'package:flutter/material.dart';
import 'appbarscreen.dart';
import 'recipes_pizza.dart';
import 'catburger.dart';
import 'catpasta.dart';
import 'catfish.dart';
import 'catsouvlaki.dart';
import 'catmeat.dart';

class Categories extends StatelessWidget {
  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(106, 203, 179, 1),
      appBar: new AppBarScreen(),
      body: ListView(
        children: [
          SizedBox(height: 20),
          Center(
            child: Text(
              "Categories",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 19.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Pizza",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    SizedBox(height: 5),
                    IconButton(
                      //minWidth: 250.0,
                      //height: 100.0,
                      icon: Image.asset(
                          "lib/assets/images/categoriespage/pizzafinal.png"),
                      iconSize: 180,
                      onPressed: () => {Gotopizza(context)},
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Burger",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    SizedBox(height: 5),
                    IconButton(
                      //minWidth: 250.0,
                      //height: 100.0,
                      icon: Image.asset(
                          "lib/assets/images/categoriespage/burgerfinal.png"),
                      iconSize: 180,
                      onPressed: () => {GotoCatburger(context)},
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Column(
                  children: [
                    Text(
                      "Souvlaki",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    SizedBox(height: 5),
                    IconButton(
                      //minWidth: 250.0,
                      //height: 100.0,
                      icon: Image.asset(
                          "lib/assets/images/categoriespage/souvlaki.png"),
                      iconSize: 180.0,
                      onPressed: () => {GotoCatSouvlaki(context)},
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Pasta",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    SizedBox(height: 5),
                    IconButton(
                      //minWidth: 250.0,
                      //height: 100.0,
                      icon: Image.asset(
                          "lib/assets/images/categoriespage/pasta.png"),
                      iconSize: 180,
                      onPressed: () => {GotoCatpasta(context)},
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Column(
                  children: [
                    Text(
                      "Fish",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    SizedBox(height: 5),
                    IconButton(
                      //minWidth: 250.0,
                      //height: 100.0,
                      icon: Image.asset(
                          "lib/assets/images/categoriespage/fish.png"),
                      iconSize: 180,
                      onPressed: () => {GotoCatFish(context)},
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
              Container(
                child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Meat",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    SizedBox(height: 5),
                    IconButton(
                      //minWidth: 250.0,
                      //height: 100.0,
                      icon: Image.asset(
                          "lib/assets/images/categoriespage/meat.png"),
                      iconSize: 180,
                      onPressed: () => {GotoCatMeat(context)},
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void Gotopizza(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => recipes_pizza()));
  }

  void GotoCatburger(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => catburger()));
  }

  void GotoCatpasta(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => catpasta()));
  }

  void GotoCatFish(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => catfish()));
  }

  void GotoCatSouvlaki(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => catsouvlaki()));
  }

  void GotoCatMeat(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => catmeat()));
  }
}
