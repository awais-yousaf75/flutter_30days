import 'package:flutter/material.dart';
import 'package:flutter_30days/widgets/drawer.dart';

// (Day 11): learned about constraints, context and
// 3 trees (widget, element and render)

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Catalog App")),
      body: Column(children: [Text("This is home page.")]),
      drawer: MyDrawer(),
    );
  }
}
