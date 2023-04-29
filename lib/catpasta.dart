import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'amarep.dart';
import 'caciorep.dart';
import 'carbrep.dart';
import 'lazrep.dart';
import 'naprep.dart';
import 'puttanescarep.dart';
import 'appbarscreen.dart';
//import 'capricrecipe.dart';

List<String> products = [
  'parmesan',
  'cream',
  'mushroom',
  'bacon',
  'pancetta',
  'garlic',
  'tomato',
  'riccota cheese'
];

class catpasta extends StatelessWidget {
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
                            "parmesan",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          iconSize: 80,
                          onPressed: () => {Gotocacio(context)},
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
                            "egg",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          iconSize: 80,
                          onPressed: () => {Gotocarb(context)},
                        ),
                      ),
                    ),
                    Container(
                      color: Color.fromRGBO(53, 143, 128, 1),
                      height: 100,
                      width: 150,
                      child: Center(
                        child: IconButton(
                          icon: Text(
                            "pecorino",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          iconSize: 80,
                          onPressed: () => {Gotoama(context)},
                        ),
                      ),
                    ),
                    Container(
                      color: Color.fromRGBO(53, 143, 128, 1),
                      height: 100,
                      width: 150,
                      child: Center(
                        child: IconButton(
                          icon: Text(
                            "olives",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          iconSize: 80,
                          onPressed: () => {Gotoput(context)},
                        ),
                      ),
                    ),
                    Container(
                      color: Color.fromRGBO(53, 143, 128, 1),
                      height: 100,
                      width: 150,
                      child: Center(
                        child: IconButton(
                          icon: Text(
                            "pancetta",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          iconSize: 80,
                          onPressed: () => {Gotocarb(context)},
                        ),
                      ),
                    ),
                    Container(
                      color: Color.fromRGBO(53, 143, 128, 1),
                      height: 100,
                      width: 150,
                      child: Center(
                        child: IconButton(
                          icon: Text(
                            "garlic",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          iconSize: 80,
                          onPressed: () => {Gotoama(context)},
                        ),
                      ),
                    ),
                    Container(
                      color: Color.fromRGBO(53, 143, 128, 1),
                      height: 100,
                      width: 150,
                      child: Center(
                        child: IconButton(
                          icon: Text(
                            "tomato",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          iconSize: 80,
                          onPressed: () => {Gotonap(context)},
                        ),
                      ),
                    ),
                    Container(
                      color: Color.fromRGBO(53, 143, 128, 1),
                      height: 100,
                      width: 150,
                      child: Center(
                        child: IconButton(
                          icon: Text(
                            "mozzarella",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          iconSize: 80,
                          onPressed: () => {Gotolaz(context)},
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
                          "Amatriciana",
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
                              "lib/assets/images/pasta/amatriciana.png"),
                          iconSize: 180.0,
                          onPressed: () => {Gotoama(context)},
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Carbonara",
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
                              "lib/assets/images/pasta/carbonara.png"),
                          iconSize: 180.0,
                          onPressed: () => {Gotocarb(context)},
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
                          "Cacio e pepe",
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
                              "lib/assets/images/pasta/cassio_e_peppe.png"),
                          iconSize: 180.0,
                          onPressed: () => {Gotocacio(context)},
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Puttanesca",
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
                              "lib/assets/images/pasta/puttanesca.png"),
                          iconSize: 180.0,
                          onPressed: () => {Gotoput(context)},
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
                          "Lazania",
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
                              "lib/assets/images/pasta/lazania.png"),
                          iconSize: 180.0,
                          onPressed: () => {Gotolaz(context)},
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
                          "Napolitana",
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
                              "lib/assets/images/pasta/napolitana.png"),
                          iconSize: 180.0,
                          onPressed: () => {Gotonap(context)},
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

  void Gotoama(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => amarep()));
  }

  void Gotocarb(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => carbrep()));
  }

  void Gotocacio(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => caciorep()));
  }

  void Gotoput(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => putrep()));
  }

  void Gotolaz(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => lazrep()));
  }

  void Gotonap(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => naprep()));
  }
}
