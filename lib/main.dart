import 'package:flutter/material.dart';

/// main() -> Entry points of code
/// runApp() -> Entry points of Apps
/// MaterialApp, Scaffold, AppBar, Text etc are 'class / Widgets'
/// home: , appBar: , title: etc are called 'property / attributes'


main() {
  //print('Entry point');
  runApp(const HelloWorldApp());
}

/// converting a class into widgets so inherits the StatelessWidget
class HelloWorldApp extends StatelessWidget {
  const HelloWorldApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( /// MaterialApp is a predifine class of flutter which indicates to set the apps ui / apps theme
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 8,
          title: Text('Hasan App'),
        ),
        body: Text('Hey I am Hasan Ahmad. This is my new flutter app project'),
      ),
    );
  }
}