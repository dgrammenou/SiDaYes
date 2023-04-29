import 'package:flutter/material.dart';
import 'allfunctions.dart';
import 'appbarscreen.dart';
import 'loginscreen.dart';
import 'searchpage.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomePage extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(106, 203, 179, 1),
      body: Center(
        //heightFactor: 50,

        child: Column(children: <Widget>[
          //heightFactor:30,
          SizedBox(height: 140),
          Container(
            height: 40,
            child: Text(
              'SiDaYes',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            child: Image(
              height: 200,
              image: AssetImage("lib/assets/images/logo.png"),
            ),
          ),
          Container(
            height: 50,
            child: Text(
              'Cook,eat,repeat',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          Container(
            height: 30,
            child: Text(
              'Explore the foodie in you',
              style: TextStyle(fontSize: 15),
            ),
          ),
          Container(
            //height: 200,
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              minWidth: 150.0,
              height: 50,
              color: Colors.black,
              child: Text('Let\'s cook',
                  style:
                      TextStyle(height: 1, color: Colors.white, fontSize: 15)),
              onPressed: () => {GotoLoginScreen(context)},
              /*child:
                  Text('Lets cook', style: TextStyle(height: 1, fontSize: 20)),*/
            ),
          ),
        ]),
      ),
    );
  }

  void GotoLoginScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => LoginScreen()));
  }
}
