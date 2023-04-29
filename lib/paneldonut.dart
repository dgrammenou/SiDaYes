import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class PanelWidgetdonut extends StatelessWidget {
  final ScrollController controller;
  final PanelController panelController;

  const PanelWidgetdonut(
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
                  "Chocolate Donuts",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.italic,
                      color: Colors.black.withOpacity(0.8)),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "1 large egg\n\n1/8 teaspoon salt\n\n1/3 cup (80 ml) milk\n\n1/4 cup (60 ml) yogurt\n\n1/2 teaspoon baking soda\n\n1/2 teaspoon vanilla extract\n\n1 cup (140g) all-purpose flour\n\n1/2 teaspoon baking powder\n\n1/2 cup (100g) granulated sugar\n\n1/4 cup (25g) unsweetened cocoa powder\n\n2 tablespoons (30g) unsalted butter, melted",
                  style: TextStyle(fontSize: 13, fontStyle: FontStyle.normal),
                ),
                SizedBox(height: 20),
                Text(
                  "Chocolate Glaze",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.italic,
                      color: Colors.black.withOpacity(0.8)),
                ),
                SizedBox(height: 10),
                Text(
                  "3 tablespoons heavy cream\n\n2 tablespoons (30g) unsalted butter\n\n1/2 cup (85g) semi-sweet chocolate or chocolate chips",
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
                SizedBox(height: 15),
                Container(
                    width: 300,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "For the donuts",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.italic,
                              color: Colors.black.withOpacity(0.8)),
                        ),
                        SizedBox(height: 15),
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
                          "Whisk together the flour, cocoa powder, baking powder, baking soda, and salt in a large bowl.",
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
                          " Set aside.In a medium bowl whisk egg with sugar until well combined. Add milk, yogurt, melted butter and vanilla extract, and whisk until combined.",
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
                          "Pour into the flour mixture and mix until just combined. The batter will be thick.Fill donut cavities with batter 3/4 way full using a spoon or a piping bag (much easier).",
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
                          "Cut a corner off the bottom of the bag and pipe the batter into each donut cup.Bake for 9-10 minutes or until a toothpick inserted into the center of the donuts comes out clean.",
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
                          "Allow to cool for 5 minutes in pan, then remove donuts from pan and transfer to a wire rack.",
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
                          "Allow to cool completely before glazing.",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontSize: 13, fontStyle: FontStyle.normal),
                        ),
                        SizedBox(height: 20),
                        //Column(
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        //children: [
                        Text(
                          "For the chocolate gaze",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.italic,
                              color: Colors.black.withOpacity(0.8)),
                        ),
                        SizedBox(height: 15),
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
                          "Melt the chocolate, heavy cream, and butter gently in the microwave (in 30-second intervals, stirring in between) or a double boiler until smooth.",
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
                          "Dip the tops of the donuts into the chocolate glaze, and place on a cooling rack to set.",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontSize: 13, fontStyle: FontStyle.normal),
                        ),
                      ],
                    )),
              ],
            ),
          ],
        ),
      );
}
