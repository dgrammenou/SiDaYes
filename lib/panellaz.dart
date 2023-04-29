import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class PanelWidgetlaz extends StatelessWidget {
  final ScrollController controller;
  final PanelController panelController;

  const PanelWidgetlaz(
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
              "1 pound sweet Italian sausage\n\n3/4 pound lean ground beef\n\n1/2 cup minced onion\n\n2 cloves garlic, crushed\n\n1 (28 ounce) can crushed tomatoes\n\n2 (6 ounce) cans tomato paste\n\n2 (6.5 ounce) cans canned tomato sauce\n\n1/2 cup water\n\n2 tablespoons white sugar\n\n1 1/2 teaspoons dried basil leaves\n\n1/2 teaspoon fennel seeds\n\n1 teaspoon Italian seasoning\n\n1 1/2 teaspoons salt\n\n1/4 teaspoon ground black pepper\n\n4 tablespoons chopped fresh parsley\n\n12 lasagna noodles\n\n16 ounces ricotta cheese\n\n1 egg\n\n3/4 pound mozzarella cheese, sliced\n\n3/4 cup grated Parmesan cheese",
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
                    "In a Dutch oven, cook sausage, ground beef, onion, and garlic over medium heat until well browned. Stir in crushed tomatoes, tomato paste, tomato sauce, and water. Season with sugar, basil, fennel seeds, Italian seasoning, 1 teaspoon salt, pepper, and 2 tablespoons parsley. Simmer, covered, for about 1 1/2 hours, stirring occasionally.",
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
                    "Bring a large pot of lightly salted water to a boil. Cook lasagna noodles in boiling water for 8 to 10 minutes. Drain noodles, and rinse with cold water. In a mixing bowl, combine ricotta cheese with egg, remaining parsley, and 1/2 teaspoon salt.",
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
                    "Preheat oven to 375 degrees F (190 degrees C).To assemble, spread 1 1/2 cups of meat sauce in the bottom of a 9x13-inch baking dish. Arrange 6 noodles lengthwise over meat sauce. Spread with one half of the ricotta cheese mixture.",
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
                    "Top with a third of mozzarella cheese slices. Spoon 1 1/2 cups meat sauce over mozzarella, and sprinkle with 1/4 cup Parmesan cheese. Repeat layers, and top with remaining mozzarella and Parmesan cheese. Cover with foil: to prevent sticking, either spray foil with cooking spray, or make sure the foil does not touch the cheese.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 13, fontStyle: FontStyle.normal),
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
                    "Bake in preheated oven for 25 minutes. Remove foil, and bake an additional 25 minutes. Cool for 15 minutes before serving.",
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
