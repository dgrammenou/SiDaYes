import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'addrecipe.dart';
import 'homepage.dart';
import 'resetpassword.dart';
import 'searchpage.dart';
import 'resetpassword.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'auth.dart';

class AppBarScreen extends StatefulWidget with PreferredSizeWidget {
  @override
  Size get preferredSize {
    return new Size.fromHeight(60.0);
  }

  AppBarScreen({Key? key}) : super(key: key);
  @override
  State<AppBarScreen> createState() => _AppBarScreenState();
}

class _AppBarScreenState extends State<AppBarScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  String _value = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(106, 203, 179, 1),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Color.fromRGBO(106, 203, 179, 1),
        title: Text(
          'SiDaYes',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          // Navigate to the Search Screen
          IconButton(
              onPressed: () => GotoSearchPage(context),
              icon: Icon(Icons.search)),
          PopupMenuButton(
              elevation: 10,
              onSelected: (value) {
                setState(() {
                  _value = value.toString();
                });
                if (_value == 'add') GotoAddRecipe(context);
                if (_value == 'notifications') showNotificationDialog(context);
                if (_value == 'reset') Gotoreset(context);
                if (_value == 'logout') Logout(context);
              },
              icon: Icon(Icons.more_vert),
              itemBuilder: (context) => [
                    PopupMenuItem(
                      child: Text("Add recipe"),
                      value: "add",
                    ),
                    PopupMenuItem(
                      child: Text("Notifications"),
                      value: "notifications",
                    ),
                    PopupMenuItem(
                      child: Text("Reset Password"),
                      value: "reset",
                    ),
                    PopupMenuItem(
                      child: Text("Logout"),
                      value: "logout",
                    ),
                  ]),
        ],
      ),
    );
  }

  void GotoSearchPage(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => SearchPage()));
  }

  showNotificationDialog(BuildContext context) {
    // set up the buttons
    Widget cancelButton = TextButton(
      child: Text(
        "Yes",
        //style: TextStyle(color: Colors.black),
      ),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
    Widget continueButton = TextButton(
      child: Text(
        "No",
        //style: TextStyle(color: Colors.black),
      ),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Notifications"),
      content: Text(
          "Would you like to receive notifications when a new recipe is posted?"),
      actions: [
        cancelButton,
        continueButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  void GotoStart(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => HomePage()));
  }

  void Gotoreset(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => ResetPassword()));
  }

  void GotoAddRecipe(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => addrecipe()));
  }

  void Logout(BuildContext context) {
    _auth.signOut();
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => HomePage()));
  }
}
