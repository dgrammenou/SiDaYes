import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class PanelWidgetveg extends StatelessWidget {
  final ScrollController controller;
  final PanelController panelController;

  const PanelWidgetveg(
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
            buildDragHandle(),
            SizedBox(height: 10),
            Center(
              child: Text("Ingredients & Execution",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900)),
            ),
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
                  "1 tablespoon olive oil\n\n1/2 cup diced onion\n\n2 cloves garlic,minced\n\n1/2 package frozen chopped spinach\n\n1/4 cup chopped fresh basil\n\n2 1/4 teaspoons lemon juice\n\n1 1/2 teaspoons dried oregano\n\n1 package refrigerated pizza crust\n\n1 cup shredded mozzarella cheese\n\n1 large tomato, thinly sliced\n\n1/3 cup seasoned bread crumbs\n\n1 cup shredded mozzarella cheese\n\n3/4 cup crumbled feta cheese",
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
                        "Preheat oven to 400 degrees F (200 degrees C). If using a pizza stone, place in oven to preheat.",
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
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.italic,
                            color: Colors.black.withOpacity(0.8)),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Heat 1 tablespoon olive oil in a large skillet; cook and stir onion and garlic until tender, about 5 minutes. Add spinach and continue to cook and stir until all liquid has evaporated, 5 to 7 minutes. Remove from heat and season with basil, lemon juice, oregano, and pepper. Allow mixture to cool slightly.",
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
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.italic,
                            color: Colors.black.withOpacity(0.8)),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Unroll pizza dough on preheated pizza stone or a large baking sheet and brush with remaining 1 tablespoon olive oil. Spread spinach mixture over dough, leaving a small border at the edge of the pizza crust. Top with 1 cup mozzarella cheese.",
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
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.italic,
                            color: Colors.black.withOpacity(0.8)),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Press tomato slices into seasoned bread crumbs until coated; arrange tomatoes over pizza. Spread remaining 1 cup mozzarella cheese and feta cheese over tomatoes.",
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
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.italic,
                            color: Colors.black.withOpacity(0.8)),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Bake in preheated oven until pizza crust is golden brown and cheese is melted, about 15 minutes.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontSize: 13, fontStyle: FontStyle.normal),
                      ),
                      SizedBox(height: 15)
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      );
}
