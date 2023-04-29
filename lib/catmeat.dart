import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'appbarscreen.dart';
//import 'capricrecipe.dart';

List<String> products = [
  'garlic',
  'chicken',
  'mushroom',
  'mozzarella',
  'avocado',
  'brocolli',
  'tomatoes',
  'red peppers'
];

class catmeat extends StatelessWidget {
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
                child: ListView.builder(
                  itemCount: 8,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Container(
                    height: 100,
                    width: 150,
                    //margin: EdgeInsets.all(10),
                    child: Center(
                      child: IconButton(
                        icon: Text(
                          "${products[index]}",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                        iconSize: 80,
                        onPressed: () => {},
                      ),
                    ),

                    color: Color.fromRGBO(53, 143, 128, 1),
                  ),
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
                          "California Chicken",
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
                              "lib/assets/images/meat/californiachicken.png"),
                          iconSize: 180.0,
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
                          "Rosemary Pork",
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
                              "lib/assets/images/meat/roosemaryporkchops.png"),
                          iconSize: 180.0,
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
                          "Skirt Steak",
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
                              "lib/assets/images/meat/skirtsteak.png"),
                          iconSize: 180.0,
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
                          "Beef&Broccoli",
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
                              "lib/assets/images/meat/beefnbrocolli.png"),
                          iconSize: 180.0,
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
                          "Pork Chops",
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
                              "lib/assets/images/meat/mushroomporkchops.png"),
                          iconSize: 180.0,
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
                          "Lemon Chicken",
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
                              "lib/assets/images/meat/lemonchicken.png"),
                          iconSize: 180.0,
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
        ),
      ),
    );
    //);
  }
}
