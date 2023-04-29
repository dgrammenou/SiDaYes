import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'bbqrecipe.dart';
import 'biancarep.dart';
import 'caprirecipe2.dart';
import 'crudorep.dart';
import 'margherita.dart';
import 'vegpizza.dart';
import 'appbarscreen.dart';
import 'caprirecipe2.dart';

List<String> products = [
  'mozzarella',
  'pepperoni',
  'mushroom',
  'bacon',
  'proshiutto',
  'chicken',
  'tomato',
  'peppers'
];

class recipes_pizza extends StatelessWidget {
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
                      height: 100,
                      width: 150,
                      //margin: EdgeInsets.all(10),
                      color: Color.fromRGBO(53, 143, 128, 1),
                      child: Center(
                        child: IconButton(
                          icon: Text(
                            "mozzarella",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          iconSize: 80,
                          onPressed: () => {GotoBBQ(context)},
                        ),
                      ),
                    ),
                    //SizedBox(height: 10),
                    /*Container(
                      height: 100,
                      width: 150,
                      color: Color.fromRGBO(53, 143, 128, 1),
                      //margin: EdgeInsets.all(10),
                      child: Center(
                        child: IconButton(
                          icon: Text(
                            "pepperoni",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          iconSize: 80,
                          onPressed: () => {},
                        ),
                      ),
                    ),*/
                    Container(
                      height: 100,
                      width: 150,
                      color: Color.fromRGBO(53, 143, 128, 1),
                      //margin: EdgeInsets.all(10),
                      child: Center(
                        child: IconButton(
                          icon: Text(
                            "mushroom",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          iconSize: 80,
                          onPressed: () => {GotoCapri(context)},
                        ),
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 150,
                      color: Color.fromRGBO(53, 143, 128, 1),
                      //margin: EdgeInsets.all(10),
                      child: Center(
                        child: IconButton(
                          icon: Text(
                            "cheddar",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          iconSize: 80,
                          onPressed: () => {GotoBBQ(context)},
                        ),
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 150,
                      color: Color.fromRGBO(53, 143, 128, 1),
                      //margin: EdgeInsets.all(10),
                      child: Center(
                        child: IconButton(
                          icon: Text(
                            "prosciutto",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          iconSize: 80,
                          onPressed: () => {GotoCapri(context)},
                        ),
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 150,
                      color: Color.fromRGBO(53, 143, 128, 1),
                      //margin: EdgeInsets.all(10),
                      child: Center(
                        child: IconButton(
                          icon: Text(
                            "chicken",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          iconSize: 80,
                          onPressed: () => {GotoBBQ(context)},
                        ),
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 150,
                      color: Color.fromRGBO(53, 143, 128, 1),
                      //margin: EdgeInsets.all(10),
                      child: Center(
                        child: IconButton(
                          icon: Text(
                            "tomato",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          iconSize: 80,
                          onPressed: () => {GotoMar(context)},
                        ),
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 150,
                      color: Color.fromRGBO(53, 143, 128, 1),
                      //margin: EdgeInsets.all(10),
                      child: Center(
                        child: IconButton(
                          icon: Text(
                            "onion",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          iconSize: 80,
                          onPressed: () => {GotoVeg(context)},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Column(
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "BBQ Chicken",
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
                              "lib/assets/images/pizza/bbqchicken.png"),
                          iconSize: 180.0,
                          onPressed: () => {GotoBBQ(context)},
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Capricciosa",
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
                              "lib/assets/images/pizza/capricciosa.png"),
                          iconSize: 180.0,
                          onPressed: () => {GotoCapri(context)},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Text(
                          "Margherita",
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
                              "lib/assets/images/pizza/margherita.png"),
                          iconSize: 180.0,
                          onPressed: () => {GotoMar(context)},
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Bianca",
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
                              Image.asset("lib/assets/images/pizza/bianca.png"),
                          iconSize: 180.0,
                          onPressed: () => {GotoBiaca(context)},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Text(
                          "Vegeterian",
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
                              "lib/assets/images/pizza/vegeterian.png"),
                          iconSize: 180.0,
                          onPressed: () => {GotoVeg(context)},
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
                          "Crudo",
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
                              Image.asset("lib/assets/images/pizza/crudo.png"),
                          iconSize: 180.0,
                          onPressed: () => {GotoCrudo(context)},
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
    //);
  }

  void GotoCapri(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => caprirecipe2()));
  }

  void GotoBBQ(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => bbqrecipe()));
  }

  void GotoBiaca(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => biancarep()));
  }

  void GotoVeg(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => vegpizza()));
  }

  void GotoCrudo(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => crudorep()));
  }

  void GotoMar(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => margherita()));
  }
}
