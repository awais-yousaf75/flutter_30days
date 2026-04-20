import 'package:flutter/material.dart';
import 'package:flutter_30days/widgets/drawer.dart';

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
