import 'package:flutter/material.dart';
import 'loginscreen.dart';
import 'homepage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'auth.dart';

class SignUpPage extends LoginScreen {
  final auth _auth = auth();
  final signupusername = TextEditingController();
  final signuppassword = TextEditingController();
  String signupusern = '';
  String signuppassw = '';
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
                    "Sign Up",
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
                            controller: signupusername,
                            onChanged: (v) => signupusern = v,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color.fromARGB(255, 201, 199, 187),
                              hintText: 'Email',
                              focusedBorder: OutlineInputBorder(
                                  //borderRadius: const BorderRadius.all(
                                  //const Radius.circular(100),
                                  borderSide: BorderSide(color: Colors.black)),
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
                            controller: signuppassword,
                            onChanged: (v) => signuppassw = v,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color.fromARGB(255, 201, 199, 187),
                              hintText: 'Password',
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black)
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
                        if ((signuppassw.length > 5) &&
                            signupusern.isNotEmpty) {
                          dynamic result =
                              await _auth.Signingup(signupusern, signuppassw);
                          if (result == null) {
                            showAlertDialog2(context);
                          } else
                            GotoLoginScreen(context);
                        } else
                          showAlertDialog(context);
                      },
                      child: Text('Sign Up'),
                    ),
                  ),
                ),
              ],
            )));
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
      content: Text("Enter a valid email"),
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
