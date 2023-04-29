import 'package:flutter/material.dart';
import '.././homepage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:responsive_framework/responsive_framework.dart';

//import 'package:cupertino_back_gesture/cupertino_back_gesture.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
    apiKey: "AIzaSyDGdYLhwCRMUhrDH7RmT7Jo8alGtaGY_tw",
    appId: "1:1027626161325:android:a8f8a9e681aa43df70a224",
    messagingSenderId: "1027626161325",
    projectId: "sidayes-e53a4",
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _fbApp = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: new HomePage(),
        builder: (context, widget) => ResponsiveWrapper.builder(
                BouncingScrollWrapper.builder(context, widget!),
                maxWidth: 1200,
                minWidth: 400,
                defaultScale: true,
                breakpoints: const [
                  ResponsiveBreakpoint.resize(450, name: MOBILE),
                  ResponsiveBreakpoint.autoScale(800, name: TABLET),
                  ResponsiveBreakpoint.autoScale(1000, name: TABLET),
                  ResponsiveBreakpoint.resize(1200, name: DESKTOP),
                ]));
  }
}
