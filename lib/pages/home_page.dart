import 'package:flutter/material.dart';
import 'package:flutter_30days/models/catalog.dart';
import 'package:flutter_30days/widgets/ItemWidget.dart';
import 'package:flutter_30days/widgets/drawer.dart';

// (Day 11): learned about constraints, context and
// 3 trees (widget, element and render)

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(20, (index) => CatalogModel.items[0]);

    return Scaffold(
      appBar: AppBar(title: Text("Catalog App")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(item: dummyList[index]);
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
