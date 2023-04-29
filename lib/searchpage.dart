import 'package:flutter/material.dart';
import 'loginscreen.dart';
import 'menupage.dart';
import 'caprirecipe2.dart';
import 'catburger.dart';
import 'catfish.dart';
import 'catmeat.dart';
import 'catpasta.dart';
import 'catsouvlaki.dart';
import 'chickenbrep.dart';
import 'recipes_pizza.dart';

class SearchPage extends StatefulWidget {
  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  //const SearchPage({Key? key}) : super(key: key);
  final keyw = TextEditingController();

  String keyword = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
          backgroundColor: Color.fromRGBO(106, 203, 179, 1),
          // The search area here
          title: Container(
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
                color: Color.fromRGBO(106, 203, 179, 1),
                borderRadius: BorderRadius.circular(5)),
            child: Center(
              child: TextField(
                cursorColor: Colors.black,
                controller: keyw,
                onChanged: (v) => keyword = v,
                onSubmitted: (value) {
                  setState(() {
                    keyword = value;
                    keyword = keyword.toLowerCase();
                    if (keyword == 'pizza') Gotopizza(context);
                    if (keyword == 'burger') Gotoburger(context);
                    if (keyword == 'souvlaki') Gotosouvlaki(context);
                    if (keyword == 'pasta') Gotopasta(context);
                    if (keyword == 'fish') Gotofish(context);
                    if (keyword == 'meat') Gotomeat(context);
                    if (keyword == 'capricciosa') Gotocapri(context);
                    if (keyword == 'chicken burger') Gotochickenb(context);
                    if (keyword == 'menu') Gotomenu(context);
                  });
                },
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    suffixIcon: Row(
                        mainAxisAlignment:
                            MainAxisAlignment.spaceBetween, // added line
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(
                              Icons.clear,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              keyw.clear();
                            },
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.more_vert,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              /* Clear the search field */
                            },
                          ),
                        ]),
                    hintText: 'In the mood for...',
                    border: InputBorder.none),
              ),
            ),
          )),
    );
  }

  void Gotopizza(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => recipes_pizza()));
  }

  void Gotomeat(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => catmeat()));
  }

  void Gotoburger(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => catburger()));
  }

  void Gotosouvlaki(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => catsouvlaki()));
  }

  void Gotopasta(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => catpasta()));
  }

  void Gotofish(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => catfish()));
  }

  void Gotocapri(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => caprirecipe2()));
  }

  void Gotochickenb(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => chickenbrep()));
  }

  void Gotomenu(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => Menupage()));
  }
}
