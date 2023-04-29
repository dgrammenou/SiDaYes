import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'avocadob.dart';
import 'baconb.dart';
import 'chickenbrep.dart';
import 'doubleb.dart';
import 'mushb.dart';
import 'veganb.dart';
import 'appbarscreen.dart';
//import 'capricrecipe.dart';

List<String> products = [
  'chicken',
  'avocado',
  'mushroom',
  'beef',
  'onion',
  'cheddar',
  'tomato',
  'lettuce'
];

class catburger extends StatelessWidget {
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
                          onPressed: () => {GotoChickenb(context)},
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
                            "avocado",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          iconSize: 80,
                          onPressed: () => {Gotoavocado(context)},
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
                          onPressed: () => {Gotomushb(context)},
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
                            "beef",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          iconSize: 80,
                          onPressed: () => {GotoDoubleb(context)},
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
                            "onion",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          iconSize: 80,
                          onPressed: () => {GotoVegb(context)},
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
                            "cheddar",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          iconSize: 80,
                          onPressed: () => {Gotomushb(context)},
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
                          onPressed: () => {Gotoavocado(context)},
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
                            "lettuce",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          iconSize: 80,
                          onPressed: () => {GotoDoubleb(context)},
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
                          "Chicken Burger",
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
                              "lib/assets/images/burger/chicken.png"),
                          iconSize: 180.0,
                          onPressed: () => {GotoChickenb(context)},
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Doublecheese",
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
                              "lib/assets/images/burger/doublecheese.png"),
                          iconSize: 180.0,
                          onPressed: () => {GotoDoubleb(context)},
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
                          "Vegan Burger",
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
                          icon:
                              Image.asset("lib/assets/images/burger/vegan.png"),
                          iconSize: 180.0,
                          onPressed: () => {GotoVegb(context)},
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Mushroom Burger",
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
                              "lib/assets/images/burger/mushroom.png"),
                          iconSize: 180.0,
                          onPressed: () => {Gotomushb(context)},
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
                          "Bacon&Egg Burger",
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
                              "lib/assets/images/burger/baconnegg.png"),
                          iconSize: 180.0,
                          onPressed: () => {Gotobacon(context)},
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
                          "Avocado Burger",
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
                              "lib/assets/images/burger/avocado.png"),
                          iconSize: 180.0,
                          onPressed: () => {Gotoavocado(context)},
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

  void GotoChickenb(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => chickenbrep()));
  }

  void GotoDoubleb(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => doublebrep()));
  }

  void GotoVegb(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => veganb()));
  }

  void Gotomushb(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => mushbrep()));
  }

  void Gotobacon(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => baconbrep()));
  }

  void Gotoavocado(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => avocadobrep()));
  }
}
