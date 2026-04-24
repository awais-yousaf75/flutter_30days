import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_30days/models/catalog.dart';
import 'package:flutter_30days/widgets/ItemWidget.dart';
import 'package:flutter_30days/widgets/drawer.dart';

// (Day 11): learned about constraints, context and
// 3 trees (widget, element and render)

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  void loadData() async {
    await Future.delayed(Duration(seconds: 3));
    final catJson = await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catJson);
    final productData = decodedData["products"];
    CatalogModel.items = List.from(
      productData,
    ).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Catalog App")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatalogModel.items.isNotEmpty)
            ? GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
                itemBuilder: (context, index) {
                  final item = CatalogModel.items[index];
                  return Card(
                    clipBehavior: .antiAlias,
                    shape: RoundedRectangleBorder(borderRadius: .circular(10)),
                    child: GridTile(
                      header: Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(color: Colors.pinkAccent),
                        child: Text(item.name),
                      ),
                      footer: Text("\$ ${item.price}"),
                      child: Image.network(item.image),
                    ),
                  );
                },
                itemCount: CatalogModel.items.length,
              )
            : Center(
                child: CupertinoActivityIndicator(
                  radius: 15,
                  color: Colors.pinkAccent,
                ),
              ),
      ),
      drawer: MyDrawer(),
    );
  }
}
