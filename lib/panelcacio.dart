import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class PanelWidgetcacio extends StatelessWidget {
  final ScrollController controller;
  final PanelController panelController;

  const PanelWidgetcacio(
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
              "Kosher salt\n\n6 oz. pasta (such as egg tagliolini, bucatini, or spaghetti)\n\n3 tbsp. unsalted butter, cubed, divided\n\n1 tsp. freshly cracked black pepper\n\n3/4 cup finely grated Grana Padano or Parmesan\n\n1/3 cup finely grated Pecorino",
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
                    "Bring 3 quarts water to a boil in a 5-qt. pot. Season with salt; add pasta and cook, stirring occasionally, until about 2 minutes before tender. Drain, reserving 3/4 cup pasta cooking water.",
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
                    "Meanwhile, melt 2 Tbsp. butter in a Dutch oven or other large pot or skillet over medium heat. Add pepper and cook, swirling pan, until toasted, about 1 minute.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 13, fontStyle: FontStyle.normal),
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
                    "Add 1/2 cup reserved pasta water to skillet and bring to a simmer. Add pasta and remaining butter. Reduce heat to low and add Grana Padano, stirring and tossing with tongs until melted. Remove pan from heat; add Pecorino, stirring and tossing until cheese melts, sauce coats the pasta, and pasta is al dente. (Add more pasta water if sauce seems dry.) Transfer pasta to warm bowls and serve.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 13, fontStyle: FontStyle.normal),
                  ),
                  SizedBox(height: 15)
                ],
              ),
            ),
          ],
        ),
      );
}
