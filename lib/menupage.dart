import 'package:flutter/material.dart';
import 'addrecipe.dart';
import 'donutrep.dart';
import 'panrecipe.dart';
import 'vegan.dart';
import 'appbarscreen.dart';
import 'categories.dart';

class Menupage extends StatelessWidget {
  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(106, 203, 179, 1),
      appBar: new AppBarScreen(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                'lib/assets/images/cooking.png',
                scale: 2,
                height: 100,
              ),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.bottomLeft,
              child: new MaterialButton(
                minWidth: 205.0,
                height: 50.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Colors.black,
                textColor: Colors.white,
                child: new Text(
                  "Vegan",
                ),
                onPressed: () => {Gotovegan(context)},
              ),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.bottomLeft,
              child: new MaterialButton(
                minWidth: 246.0,
                height: 50.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Colors.black,
                textColor: Colors.white,
                child: new Text(
                  "Snacks",
                ),
                onPressed: () => {},
              ),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.bottomLeft,
              child: new MaterialButton(
                minWidth: 287.0,
                height: 50.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Colors.black,
                textColor: Colors.white,
                child: new Text(
                  "Cuisine",
                ),
                onPressed: () => {},
              ),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.bottomLeft,
              child: new MaterialButton(
                minWidth: 328.0,
                height: 50.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Colors.black,
                textColor: Colors.white,
                child: new Text(
                  "Desserts",
                ),
                onPressed: () => {},
              ),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.bottomLeft,
              child: new MaterialButton(
                minWidth: 369.0,
                height: 50.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Colors.black,
                textColor: Colors.white,
                child: new Text(
                  "Main Dish",
                ),
                onPressed: () => {GotoCategories(context)},
              ),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.bottomLeft,
              child: new MaterialButton(
                minWidth: 410.0,
                height: 50.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Colors.black,
                textColor: Colors.white,
                //child: Align(
                //alignment: Alignment(0, 0),
                child: Text(
                  "Give us your best ideas",
                ),
                //),
                onPressed: () => {Gotoadd(context)},
              ),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text("Recent",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold)),
              //onPressed: () => {},
              //),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  //minWidth: 250.0,
                  //height: 100.0,
                  //child:
                  icon:
                      Image.asset("lib/assets/images/recentmenu/pancakesf.png"),
                  iconSize: 180,
                  onPressed: () => {GotoPan(context)},
                ),
                IconButton(
                  //minWidth: 250.0,
                  //height: 100.0,
                  icon: Image.asset("lib/assets/images/recentmenu/donutsf.png"),
                  iconSize: 180,
                  onPressed: () => {GotoDonut(context)},
                ),
              ],
            ),
          ],
        ),
        //],
      ),
    );
  }

  void GotoCategories(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => Categories()));
  }

  void GotoPan(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => panrecipe()));
  }

  void GotoDonut(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => donutrecipe()));
  }

  void Gotoadd(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => addrecipe()));
  }

  void Gotovegan(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => Vegan()));
  }
}
