import 'package:flutter/material.dart';
import 'appbarscreen.dart';
import 'recipes_pizza.dart';
import 'catburger.dart';
import 'catpasta.dart';
import 'catfish.dart';
import 'catsouvlaki.dart';
import 'catmeat.dart';

class Vegan extends StatelessWidget {
  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(106, 203, 179, 1),
      appBar: new AppBarScreen(),
      body: ListView(
        children: [
          /*SizedBox(height: 20),
          Center(
            child: Text(
              "Categories",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 19.0,
                  fontWeight: FontWeight.bold),
            ),
          ),*/
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Ceasar Salad",
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
                      icon:
                          Image.asset("lib/assets/images/vegan/vegansalad.png"),
                      iconSize: 180,
                      onPressed: () => {},
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Squash Soup",
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
                      icon:
                          Image.asset("lib/assets/images/vegan/squashsoup.png"),
                      iconSize: 180,
                      onPressed: () => {},
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
                      "Cauliflower Tacos",
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
                          "lib/assets/images/vegan/roastedtacos.png"),
                      iconSize: 180,
                      onPressed: () => {},
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Shitake Tacos",
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
                          "lib/assets/images/vegan/shitaketacos.png"),
                      iconSize: 180,
                      onPressed: () => {},
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
                      "Quinoa Burger",
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
                          "lib/assets/images/vegan/quinoaburger.png"),
                      iconSize: 180,
                      onPressed: () => {},
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
                      "Sweet and Sour Tofu",
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
                      icon: Image.asset("lib/assets/images/vegan/tofu1.png"),
                      iconSize: 180,
                      onPressed: () => {},
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
}
