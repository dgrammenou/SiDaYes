import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'chickengyros.dart';
import 'chicksouv.dart';
import 'porkgyros.dart';
import 'porksouvlaki.dart';
import 'tzatziki.dart';
import 'veggyros.dart';
import 'appbarscreen.dart';
//import 'capricrecipe.dart';

List<String> products = [
  'chicken',
  'tzatziki',
  'red onion',
  'pork',
  'cucumber',
  'tomato',
  'mushroom',
  'red peppers'
];

class catsouvlaki extends StatelessWidget {
  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(106, 203, 179, 1),
      appBar: new AppBarScreen(),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50,
                child: ListView(
                  //itemCount: 8,
                  scrollDirection: Axis.horizontal,
                  //itemBuilder: (context, index) =>
                  children: [
                    Container(
                      color: Color.fromRGBO(53, 143, 128, 1),
                      height: 100,
                      width: 150,
                      //margin: EdgeInsets.all(10),
                      child: Center(
                        child: IconButton(
                          icon: Text(
                            "chicken",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          iconSize: 80,
                          onPressed: () => {GotoChickengyros(context)},
                        ),
                      ),
                    ),
                    Container(
                      color: Color.fromRGBO(53, 143, 128, 1),
                      height: 100,
                      width: 150,
                      //margin: EdgeInsets.all(10),
                      child: Center(
                        child: IconButton(
                          icon: Text(
                            "tzatziki",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          iconSize: 80,
                          onPressed: () => {Gototzatziki(context)},
                        ),
                      ),
                    ),
                    Container(
                      color: Color.fromRGBO(53, 143, 128, 1),
                      height: 100,
                      width: 150,
                      //margin: EdgeInsets.all(10),
                      child: Center(
                        child: IconButton(
                          icon: Text(
                            "red onion",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          iconSize: 80,
                          onPressed: () => {GotoPorkgyros(context)},
                        ),
                      ),
                    ),
                    Container(
                      color: Color.fromRGBO(53, 143, 128, 1),
                      height: 100,
                      width: 150,
                      //margin: EdgeInsets.all(10),
                      child: Center(
                        child: IconButton(
                          icon: Text(
                            "pork",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          iconSize: 80,
                          onPressed: () => {GotoPorkgyros(context)},
                        ),
                      ),
                    ),
                    Container(
                      color: Color.fromRGBO(53, 143, 128, 1),
                      height: 100,
                      width: 150,
                      //margin: EdgeInsets.all(10),
                      child: Center(
                        child: IconButton(
                          icon: Text(
                            "cucumber",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          iconSize: 80,
                          onPressed: () => {Gototzatziki(context)},
                        ),
                      ),
                    ),
                    Container(
                      color: Color.fromRGBO(53, 143, 128, 1),
                      height: 100,
                      width: 150,
                      //margin: EdgeInsets.all(10),
                      child: Center(
                        child: IconButton(
                          icon: Text(
                            "tomato",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          iconSize: 80,
                          onPressed: () => {GotoChickengyros(context)},
                        ),
                      ),
                    ),
                    Container(
                      color: Color.fromRGBO(53, 143, 128, 1),
                      height: 100,
                      width: 150,
                      //margin: EdgeInsets.all(10),
                      child: Center(
                        child: IconButton(
                          icon: Text(
                            "mushroom",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          iconSize: 80,
                          onPressed: () => {Gotoveggyros(context)},
                        ),
                      ),
                    ),
                    Container(
                      color: Color.fromRGBO(53, 143, 128, 1),
                      height: 100,
                      width: 150,
                      //margin: EdgeInsets.all(10),
                      child: Center(
                        child: IconButton(
                          icon: Text(
                            "red peppers",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          iconSize: 80,
                          onPressed: () => {Gotoporksouvlaki(context)},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Column(
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Pork Gyros",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.italic),
                        ),
                        SizedBox(height: 5),
                        IconButton(
                          //minWidth: 250.0,
                          //height: 100.0,
                          icon: Image.asset(
                              "lib/assets/images/souvlaki/porkgyros.png"),
                          iconSize: 180.0,
                          onPressed: () => {GotoPorkgyros(context)},
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Chicken Gyros",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.italic),
                        ),
                        SizedBox(height: 5),
                        IconButton(
                          //minWidth: 250.0,
                          //height: 100.0,
                          icon: Image.asset(
                              "lib/assets/images/souvlaki/chickengyros.png"),
                          iconSize: 180.0,
                          onPressed: () => {GotoChickengyros(context)},
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
                          "Pork Souvlaki",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.italic),
                        ),
                        SizedBox(height: 5),
                        IconButton(
                          //minWidth: 250.0,
                          //height: 100.0,
                          icon: Image.asset(
                              "lib/assets/images/souvlaki/porksouvlaki.png"),
                          iconSize: 180.0,
                          onPressed: () => {Gotoporksouvlaki(context)},
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Chicken Souvlaki",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.italic),
                        ),
                        SizedBox(height: 5),
                        IconButton(
                          //minWidth: 250.0,
                          //height: 100.0,
                          icon: Image.asset(
                              "lib/assets/images/souvlaki/chickensouvlaki.png"),
                          iconSize: 180.0,
                          onPressed: () => {Gotochicksouvlaki(context)},
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
                          "Vegan Gyros",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.italic),
                        ),
                        SizedBox(height: 5),
                        IconButton(
                          //minWidth: 250.0,
                          //height: 100.0,
                          icon: Image.asset(
                              "lib/assets/images/souvlaki/vegangyros.png"),
                          iconSize: 180.0,
                          onPressed: () => {Gotoveggyros(context)},
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
                          "Tzatziki Sauce",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.italic),
                        ),
                        SizedBox(height: 5),
                        IconButton(
                          //minWidth: 250.0,
                          //height: 100.0,
                          icon: Image.asset(
                              "lib/assets/images/souvlaki/tzatziki.png"),
                          iconSize: 180.0,
                          onPressed: () => {Gototzatziki(context)},
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void GotoPorkgyros(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => porkgyros()));
  }

  void GotoChickengyros(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => chickengyros()));
  }

  void Gotoporksouvlaki(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => porksouvlaki()));
  }

  void Gotochicksouvlaki(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => chicksouvlaki()));
  }

  void Gotoveggyros(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => veggyros()));
  }

  void Gototzatziki(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => tzatziki()));
  }
}
