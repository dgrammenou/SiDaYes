import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  get child => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SiDaYes',
      //debugShowCheckedModeBanner: false,
      theme: ThemeData(visualDensity: VisualDensity.adaptivePlatformDensity),
      home: new Menupage(),
    );
  }
}

class Menupage extends StatelessWidget {
  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(106, 203, 179, 1),
      appBar: new Appbarscreen(),
      body: ListView(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              'web/icons/cooking.png',
              scale: 2,
              height: 100,
            ),
          ),
          SizedBox(height: 20),
          Align(
            alignment: Alignment.bottomLeft,
            child: new MaterialButton(
              minWidth: 400.0,
              height: 50.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: Colors.black,
              textColor: Colors.white,
              child: new Text(
                "Diet",
              ),
              onPressed: () => {GotoDiet(context)},
            ),
          ),
          SizedBox(height: 10),
          Align(
            alignment: Alignment.bottomLeft,
            child: new MaterialButton(
              minWidth: 480.0,
              height: 50.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: Colors.black,
              textColor: Colors.white,
              child: new Text(
                "Diet",
              ),
              onPressed: () => {},
            ),
          ),
          SizedBox(height: 10),
          Align(
            alignment: Alignment.bottomLeft,
            child: new MaterialButton(
              minWidth: 560.0,
              height: 50.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: Colors.black,
              textColor: Colors.white,
              child: new Text(
                "Diet",
              ),
              onPressed: () => {},
            ),
          ),
          SizedBox(height: 10),
          Align(
            alignment: Alignment.bottomLeft,
            child: new MaterialButton(
              minWidth: 640.0,
              height: 50.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: Colors.black,
              textColor: Colors.white,
              child: new Text(
                "Diet",
              ),
              onPressed: () => {},
            ),
          ),
          SizedBox(height: 10),
          Align(
            alignment: Alignment.bottomLeft,
            child: new MaterialButton(
              minWidth: 720.0,
              height: 50.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: Colors.black,
              textColor: Colors.white,
              child: new Text(
                "Diet",
              ),
              onPressed: () => {},
            ),
          ),
          SizedBox(height: 10),
          Align(
            alignment: Alignment.bottomLeft,
            child: new MaterialButton(
              minWidth: 800.0,
              height: 50.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: Colors.black,
              textColor: Colors.white,
              child: Align(
                alignment: Alignment(0, 0),
                child: Text(
                  "Diet",
                ),
              ),
              onPressed: () => {},
            ),
          ),
          SizedBox(height: 10),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Recent",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
            ),
          ),
          SizedBox(height: 10),
          Align(
            alignment: Alignment.centerLeft,
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new FlatButton(
                  padding: EdgeInsets.all(0.0),
                  onPressed: () {
                    debugPrint("clicked");
                  },
                  child: Image.asset('web/icons/cooking.png'),
                ),
                new FlatButton(
                  padding: EdgeInsets.all(0.0),
                  onPressed: () {
                    debugPrint("clicked");
                  },
                  child: Image.asset('web/icons/cooking.png'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void GotoDiet(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => DietScreen()));
  }
}

class DietScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(106, 203, 179, 1),
      appBar: new Appbarscreen(),
    );
  }
}

class Appbarscreen extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(106, 203, 179, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(106, 203, 179, 1),
        title: Text('SiDaYes',
            style: TextStyle(fontSize: 20, color: Colors.black)),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.search,
                size: 26.0,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(Icons.more_vert),
            ),
          ),
        ],
        actionsIconTheme: IconThemeData(color: Colors.black),
      ),
    );
  }
}
