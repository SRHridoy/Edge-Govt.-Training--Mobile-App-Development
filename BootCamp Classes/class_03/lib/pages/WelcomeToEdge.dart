// Importing Flutter and Dart packages require to connect
import 'package:flutter/material.dart';

// // Main Function
// void main() {
// // Giving command to runApp() to run the app.
//
// /* runApp() function is to attach the given widget to the screen. */
//   runApp(const MyApp());
// }
//
// // Widget is used to create UI in flutter framework.
//
// /* StatelessWidget is a widget, which does not maintain
// any state of the widget. */
//
// /* MyApp extends StatelessWidget and overrides its
// build method. */
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
// // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       // title of the application
//       title: 'Hello World Demo Application',
//       // theme of the widget
//       theme: ThemeData(
//         primarySwatch: Colors.lightGreen,
//       ),
//       // Inner UI of the application
//       home: const MyHomePage(title: 'Home page'),
//     );
//   }
// }

/* This class is similar to MyApp instead it
returns Scaffold Widget */
class Welcometoedge extends StatelessWidget {
  const Welcometoedge({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      // Sets the content to the
      // center of the application page
      body: const Center(
        // Sets the content of the Application
          child: Text(
            'Welcome to EDGE Project',
          )),
    );
  }
}

