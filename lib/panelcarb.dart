import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class PanelWidgetcarb extends StatelessWidget {
  final ScrollController controller;
  final PanelController panelController;

  const PanelWidgetcarb(
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
                  "3 large free-range egg yolks\n\n40 g Parmesan cheese , plus extra to serve\n\n1 x 150 g piece of higher-welfare pancetta\n\n200 g dried spaghetti\n\n1 clove of garlic\n\nextra virgin olive oil",
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
                        "Put the egg yolks into a bowl, finely grate in the Parmesan, season with pepper, then mix well with a fork and put to one side.Cut any hard skin off the pancetta and set aside, then chop the meat.",
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
                        "Cook the spaghetti in a large pan of boiling salted water until al dente.",
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
                        "Meanwhile, rub the pancetta skin, if you have any, all over the base of a medium frying pan.",
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
                        "Peel the garlic, then crush with the palm of your hand, add it to the pan and leave it to flavour the fat for 1 minute. Stir in the pancetta, then cook for 4 minutes, or until it starts to crisp up.",
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
                        "Pick out and discard the garlic from the pan, then, reserving some of the cooking water, drain and add the spaghetti. Toss well over the heat so it really soaks up all that lovely flavour, then remove the pan from the heat.",
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
                        "Add a splash of the cooking water and toss well, season with pepper, then pour in the egg mixture – the pan will help to cook the egg gently, rather than scrambling it. Toss well, adding more cooking water until it’s lovely and glossy.",
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
