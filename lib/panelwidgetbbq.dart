import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class PanelWidgetbbq extends StatelessWidget {
  final ScrollController controller;
  final PanelController panelController;

  const PanelWidgetbbq(
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
                  "2 tablespoons olive oil\n\n1/4 cup yellow cornmeal\n\n1 pound pizza dough, homemade or store-bought\n\n1/2 cup plus 2 tablespoons favorite bbq sauce\n\n2 cups leftover shredded rotisserie chicken\n\n1 cup shredded smoked cheddar cheese\n\n1 cup shredded whole milk mozzarella cheese\n\n1/2 cup diced red onion\n\nKosher salt and freshly ground pepper, to taste\n\n3 tablespoons chopped fresh cilantro leaves",
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
                      Text(
                        "Preheat oven to 450 degrees F. Lightly coat a baking sheet or pizza pan with olive oil.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontSize: 13, fontStyle: FontStyle.normal),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Step 2",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 14,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w600,
                            color: Colors.black.withOpacity(0.8)),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Working on a surface that has been sprinkled with cornmeal, roll out the pizza into a 12-inch-diameter round. Transfer to prepared baking sheet or pizza pan.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontSize: 13, fontStyle: FontStyle.normal),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Step 3",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 14,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w600,
                            color: Colors.black.withOpacity(0.8)),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Using a small ladle, spread bbq sauce over the surface of the dough in an even layer, leaving a 1/2-inch border.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontSize: 13, fontStyle: FontStyle.normal),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Step 4",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 14,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w600,
                            color: Colors.black.withOpacity(0.8)),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Top with chicken, cheeses and onion; season with salt and pepper, to taste.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontSize: 13, fontStyle: FontStyle.normal),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Step 5",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 14,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w600,
                            color: Colors.black.withOpacity(0.8)),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Place into oven and bake for 20-24 minutes, or until the crust is golden brown and the cheeses have melted.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontSize: 13, fontStyle: FontStyle.normal),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Step 6",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 14,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w600,
                            color: Colors.black.withOpacity(0.8)),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Serve immediately, garnished with cilantro, if desired.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontSize: 13, fontStyle: FontStyle.normal),
                      ),
                      SizedBox(height: 15),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      );
}
