import 'package:flutter/material.dart';
import 'package:sidayes/user.dart';
import 'appbarscreen.dart';
import 'package:multiselect_formfield/multiselect_formfield.dart';
import 'database.dart';
import 'package:firebase_auth/firebase_auth.dart';

class addrecipe extends StatelessWidget {
  String uid = '';
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final textcontroller = TextEditingController();
  //final repController = TextEditingController();
  final textcontroller1 = TextEditingController();
  String ingredients = "";
  String text = '';
  String text1 = '';
  List? mying;
  String? myingres;
  final formKey = new GlobalKey<FormState>();
  @override
  void initState() {
    mying = [];
    myingres = "";
  }

  @override
  Widget build(BuildContext context) {
    //final repController = TextEditingController();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Color.fromRGBO(106, 203, 179, 1),
        appBar: AppBar(
            iconTheme: IconThemeData(
              color: Colors.black, //change your color here
            ),
            backgroundColor: Color.fromRGBO(106, 203, 179, 1),
            title: Text(
              'Add your recipe',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.black.withOpacity(0.8)),
            ),
            actions: [
              Container(
                height: 40,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 201, 199, 187),
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                ),
              )
            ]),
        body: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 30),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: TextField(
                    controller: textcontroller1,
                    onChanged: (v) => text1 = v,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromARGB(255, 201, 199, 187),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        hintText: "Give your recipe a name",
                        hintStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.normal)),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.all(20),
                  child: MultiSelectFormField(
                    autovalidate: AutovalidateMode.disabled,
                    chipBackGroundColor: Color.fromARGB(255, 60, 158, 153),
                    chipLabelStyle: TextStyle(
                        fontSize: 15,
                        fontStyle: FontStyle.italic,
                        color: Color.fromARGB(255, 236, 235, 232)),
                    dialogTextStyle: TextStyle(fontWeight: FontWeight.normal),
                    checkBoxActiveColor: Color.fromARGB(255, 60, 158, 153),
                    checkBoxCheckColor: Color.fromARGB(255, 236, 235, 232),
                    dialogShapeBorder: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(18.0))),
                    title: Text(
                      "Choose your ingredients",
                      style: TextStyle(
                          fontSize: 17, fontWeight: FontWeight.normal),
                    ),
                    validator: (value) {
                      if (value == null || value.length == 0) {
                        return 'Please select one or more ingredients';
                      }
                      return null;
                    },
                    dataSource: [
                      {
                        "display": "peppers",
                        "value": "peppers",
                      },
                      {
                        "display": "mushrooms",
                        "value": "mushrooms",
                      },
                      {
                        "display": "chicken",
                        "value": "chicken",
                      },
                      {
                        "display": "iceberg",
                        "value": "iceberg",
                      },
                      {
                        "display": "mozzarella",
                        "value": "mozzarella",
                      },
                      {
                        "display": "pepperoni",
                        "value": "pepperoni",
                      },
                      {
                        "display": "proschiutto",
                        "value": "proschiutto",
                      },
                      {
                        "display": "olive oil",
                        "value": "olive oil",
                      },
                      {
                        "display": "garlic",
                        "value": "garlic",
                      },
                      {
                        "display": "broccoli",
                        "value": "broccoli",
                      },
                    ],
                    textField: 'display',
                    valueField: 'value',
                    okButtonLabel: "OK",
                    cancelButtonLabel: "Cancel",
                    fillColor: Color.fromARGB(255, 201, 199, 187),
                    initialValue: mying,
                    onSaved: (value) {
                      if (value == null) return;
                      for (String ingredient in value)
                        ingredients = ingredients + ingredient + '/';
                    },
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Expanded(
                      child: TextField(
                        //controller:repController,
                        controller: textcontroller,
                        onChanged: (v) => text = v,
                        //controller: repController,
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Color.fromARGB(255, 201, 199, 187),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            //labelText: 'Add your recipe',
                            /*suffixIcon: IconButton(
                                  icon: Icon(Icons.close),
                                  color: Colors.black,
                                  onPressed: () => repController.clear(),
                                ),*/

                            hintText:
                                "Introduce your recipe, add notes, cooking tips, serving suggestions, etc...",
                            hintStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.normal)),
                        keyboardType: TextInputType.multiline,
                        minLines: 1,
                        maxLines: 100,
                        //maxLength: 1000,
                      ),
                    )),
                SizedBox(height: 40),
                Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 201, 199, 187),
                      borderRadius: BorderRadius.all(Radius.circular(25.0)),
                    ),
                    child: IconButton(
                        iconSize: 100,
                        icon: Text(
                          "Save",
                          style: TextStyle(
                              fontSize: 15,
                              //fontWeight: FontWeight.,
                              color: Colors.black),
                        ),
                        onPressed: () async {
                          if (_auth.currentUser != null) {
                            final User? user = _auth.currentUser;
                            print(ingredients);
                            print(text1);
                            print(text);
                            if (ingredients != '' &&
                                text != '' &&
                                text1 != '' &&
                                user != null) {
                              await Databaseservice(uid: user.uid)
                                  .updaterecipes(text1, ingredients, text);
                            }
                            if (user != null) {
                              print(user.uid);
                            }
                            showAlertDialog(context);
                          }
                        })),
              ],
            ),
          ),
        ),
      ),
      //),
    );
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
      title: Text("Recipe Received"),
      content: Text(
          "Congratulations! Your recipe was received succesfully and will be published soon!"),
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

  void setState(Null Function() param0) {}
}
