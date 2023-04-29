import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class PanelWidgetmush extends StatelessWidget {
  final ScrollController controller;
  final PanelController panelController;

  const PanelWidgetmush(
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
              "cups finely chopped fresh mushrooms\n\n2 large eggs, lightly beaten\n\n1/2 cup dry bread crumbs\n\n1/2 cup shredded cheddar cheese\n\n1/2 cup finely chopped onion\n\n1/4 cup all-purpose flour\n\n1/2 teaspoon salt\n\n1/4 teaspoon dried thyme\n\n1/4 teaspoon pepper\n\n1 tablespoon canola oil\n\n4 whole wheat hamburger buns, split\n\n4 lettuce leaves",
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
                    "In a large bowl, combine the first 9 ingredients. Shape into four 3/4-in.-thick patties.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 13, fontStyle: FontStyle.normal),
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
                    "In a large cast-iron or other heavy skillet, heat oil over medium heat. Add burgers; cook until crisp and lightly browned, 3-4 minutes on each side. Serve on buns with lettuce and if desired, tomato and mayonnaise.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 13, fontStyle: FontStyle.normal),
                  ),
                  SizedBox(height: 15),
                ],
              ),
            ),
          ],
        ),
      );
}
