import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class PanelWidgetavocado extends StatelessWidget {
  final ScrollController controller;
  final PanelController panelController;

  const PanelWidgetavocado(
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
                  "1 1/2 tsp. Worcestershire sauce\n\n1 1/2 tsp. salt\n\n3/4 tsp. pepper\n\n2 lb. lean ground beef\n\n1 1/2 ripe, Fresh California Avocados\n\nAs needed Lettuce leaves as needed\n\n2 onions, sliced\n\n2 tomatoes, sliced\n\n6 sesame seed burger buns",
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
                        "Combine Worcestershire, salt and pepper and ground beef.",
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
                        "Shape into patties. Refrigerate at least 30 minutes.",
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
                        "Broil, grill or pan fry to desired doneness.",
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
                        "While burger patties are cooking, seed, peel and mash the avocado.",
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
                        "Serve each patty on bun with lettuce, sliced tomatoes and onion.",
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
                        "Top each burger patty with mashed ripe Fresh California Avocado.",
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
