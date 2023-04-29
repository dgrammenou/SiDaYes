import 'package:flutter/material.dart';
import 'panelcacio.dart';
import 'panellaz.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'appbarscreen.dart';

class lazrep extends StatelessWidget {
  get child => null;
  final panelController = PanelController();

  @override
  Widget build(BuildContext context) {
    final panelheight = MediaQuery.of(context).size.height * 0.20;
    final maxheight = MediaQuery.of(context).size.height * 0.9;
    return Scaffold(
      appBar: new AppBarScreen(),
      body: SlidingUpPanel(
        controller: panelController,
        maxHeight: maxheight,
        minHeight: panelheight,
        body: Container(
          constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("lib/assets/images/pasta/lazrep2.jpg"),
                fit: BoxFit.cover),
          ),
        ),
        panelBuilder: (controller) => PanelWidgetlaz(
          controller: controller,
          panelController: panelController,
        ),
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        color: Color.fromRGBO(192, 186, 153, 1),
      ),
    );
  }
}
