import 'package:flutter/material.dart';
import 'homepage.dart';
import 'menupage.dart';
import 'resetpassword.dart';
import 'signuppage.dart';
import 'auth.dart';
import 'forgotpassword.dart';

class LoginScreen extends HomePage {
  final auth _auth = auth();
  final loginusername = TextEditingController();
  final loginpassword = TextEditingController();
  String loginusern = '';
  String loginpassw = '';
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
            backgroundColor: Color.fromRGBO(106, 203, 179, 1),
            body: ListView(
              children: [
                SizedBox(height: 80),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Log In",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                  ),
                ),
                SizedBox(height: 40),
                Container(
                    //decoration: new BoxDecoration(shape: BoxShape.circle),
                    width: 500,
                    child: Center(
                      child: Container(
                        decoration: new BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        height: 50.0,
                        width: 250.0,
                        child: TextField(
                            cursorColor: Colors.black,
                            controller: loginusername,
                            onChanged: (v) => loginusern = v,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color.fromARGB(255, 201, 199, 187),
                              hintText: 'Email',
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                                //borderRadius: const BorderRadius.all(
                                //const Radius.circular(100),
                              ),
                            )),
                      ),
                    )),
                SizedBox(height: 10),
                Container(
                    //decoration: new BoxDecoration(shape: BoxShape.circle),
                    width: 500,
                    child: Center(
                      child: Container(
                        decoration: new BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        height: 50.0,
                        width: 250.0,
                        child: TextField(
                            cursorColor: Colors.black,
                            obscureText: true,
                            controller: loginpassword,
                            onChanged: (v) => loginpassw = v,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color.fromARGB(255, 201, 199, 187),
                              hintText: 'Password',
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                                //borderRadius: const BorderRadius.all(
                                //const Radius.circular(100),
                              ),
                            )),
                      ),
                    )),
                SizedBox(height: 20),
                Container(
                    width: 400,
                    height: 50,
                    child: Center(
                      child: MaterialButton(
                        height: 50,
                        minWidth: 250.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        color: Colors.black,
                        textColor: Colors.white,
                        onPressed: () async {
                          if ((loginpassw.length > 5) &&
                              loginusern.isNotEmpty) {
                            dynamic result =
                                await _auth.Signingin(loginusern, loginpassw);
                            if (result == null) {
                              showAlertDialog2(context);
                            } else
                              GotoMenuPage(context);
                          } else
                            showAlertDialog(context);
                        },
                        child: Text('Log In'),
                      ),
                    )),
                SizedBox(height: 5),
                Container(
                    width: 400,
                    height: 50,
                    child: Center(
                      child: MaterialButton(
                        height: 50,
                        minWidth: 250.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        color: Color.fromRGBO(53, 125, 148, 1),
                        textColor: Colors.white,
                        onPressed: () => {GotoSignUp(context)},
                        child: Text('Sign up'),
                      ),
                    )),
                SizedBox(height: 12),
                Container(
                    width: 400,
                    height: 10,
                    child: Center(
                      child: MaterialButton(
                        height: 10,
                        minWidth: 250.0,
                        shape: InputBorder.none,
                        textColor: Colors.black,
                        onPressed: () => {GotoResetPassword(context)},
                        child: Text('Forgot Password?',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 10)),
                      ),
                    )),
              ],
            )));
  }

  void GotoMenuPage(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => Menupage()));
  }

  void GotoSignUp(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => SignUpPage()));
  }

  void GotoResetPassword(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => ForgotPassword()));
  }

  showAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.of(context).pop(); // dismiss dialog
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Text empty"),
      content: Text("Please fill both your email and password"),
      actions: [
        okButton,
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

  showAlertDialog2(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.of(context).pop(); // dismiss dialog
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Error"),
      content: Text("Wrong email or password"),
      actions: [
        okButton,
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
}
