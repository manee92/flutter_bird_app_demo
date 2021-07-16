import 'package:flutter/material.dart';
import 'package:flutter_bird_demo/screens/bird_list_screen.dart';

void main() {
  runApp(BirdApp());
}

class BirdApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Bird App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(appBarTheme: AppBarTheme(backgroundColor: Colors.green)),
      home: BirdListScreen(),
    );
  }
}
