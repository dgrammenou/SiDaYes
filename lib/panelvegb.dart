import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class PanelWidgetvegb extends StatelessWidget {
  final ScrollController controller;
  final PanelController panelController;

  const PanelWidgetvegb(
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
              "2 large aubergines, pricked all over with a fork\n\n1 tbsp olive oil\n\n1 large onion, thinly sliced\n\n1 heaped tsp garlic granules\n\n2 tsp smoked paprika\n\n1 tbsp demerara sugar\n\n1 tsp dried oregano\n\n5 tbsp barbecue sauce\n\n400g can black beans, drained\n\n4 burger buns, toasted and lightly buttered\n\nred onion or pink pickled onion, shredded lettuce, coleslaw",
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
                    "Heat the grill to high and grill the aubergine, turning occasionally, until blackened and soft all over, about 20-30 mins. Set aside to cool.",
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
                    "Meanwhile, heat the oil in a large ovenproof pan over a medium heat, add the onion and fry until softened and golden, about 10 mins. Heat the oven to 200C/180C fan/gas 6.",
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
                    "Peel the skin from the cooled aubergine and discard it, or scoop out the flesh using a spoon, then put in the pan with the onion. Add the garlic granules, paprika, sugar, oregano, 1 tsp sea salt and 1 tsp black pepper. Stir until aromatic, then mix in the barbecue sauce along with the black beans. Season and bake until the sauce is rich and thick, and the aubergine resembles pulled pork - about 10-15 mins.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 13, fontStyle: FontStyle.normal),
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
                    "Pile into the burger buns with the red onion or pink pickled onion and any other burger fillings you like. Enjoy with coleslaw and corn on the cob on the side, if you like.",
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
