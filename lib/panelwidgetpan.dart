import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class PanelWidgetpan extends StatelessWidget {
  final ScrollController controller;
  final PanelController panelController;

  const PanelWidgetpan(
      {Key? key, required this.controller, required this.panelController})
      : super(key: key);

  @override
  Widget build(BuildContext context) => ListView(
        padding: EdgeInsets.all(10),
        controller: controller,
        children: <Widget>[
          SizedBox(height: 5),
          buildAboutText(),
          SizedBox(height: 20),
        ],
      );
  Widget buildDragHandle() => GestureDetector(
        child: Center(
          child: Container(
            width: 30,
            height: 5,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.6),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
        onTap: togglePanel,
      );
  void togglePanel() => panelController.isPanelOpen
      ? panelController.close()
      : panelController.open();
  Widget buildAboutText() => Container(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //SizedBox(height: 10),
            buildDragHandle(),
            SizedBox(height: 10),
            Center(
              child: Text("Ingredients & Execution",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900)),
            ),
            //Row(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Text(
                  "Ingredients:",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black.withOpacity(0.8)),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "1 cup  milk\n\n1 egg beaten\n\n1 teaspoon salt\n\n1 cup all-purpose flour\n\n2 tablespoons white sugar\n\n2 teaspoons baking powder\n\n1 tablespoon sugar, optional\n\n2 tablespoons vegetable oil",
                  style: TextStyle(fontSize: 13, fontStyle: FontStyle.normal),
                ),
                SizedBox(height: 20),
                Text(
                  "Execution:",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black.withOpacity(0.8)),
                ),
                SizedBox(height: 10),
                Container(
                    width: 300,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Step 1",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.italic,
                              color: Colors.black.withOpacity(0.8)),
                        ),
                        SizedBox(height: 5),
                        //Container(
                        //width: 300,
                        Text(
                          "In a large bowl, mix flour,baking powder and salt.Make a well in the center, and pourin milk, egg and oil. Mix until smooth.",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontSize: 13, fontStyle: FontStyle.normal),
                        ),

                        SizedBox(height: 10),
                        //Column(
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        //children: [
                        Text(
                          "Step 2",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.italic,
                              color: Colors.black.withOpacity(0.8)),
                        ),
                        SizedBox(height: 5),
                        //Container(
                        //width: 300,
                        Text(
                          "Heat a lightly oiled griddle or frying pan over medium high heat. Pour or scoop the batter ontothe griddle, using approximatly 1/4 cup for each pancake.Brown on both sides and serve hot.",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontSize: 13, fontStyle: FontStyle.normal),
                        ),

                        SizedBox(height: 15),
                      ],
                    )),
              ],
            ),
          ],
        ),
      );
}
