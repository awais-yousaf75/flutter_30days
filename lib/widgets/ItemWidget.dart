import 'package:flutter/material.dart';
import 'package:flutter_30days/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
  const ItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$ ${item.price}",
          style: TextStyle(color: Colors.pinkAccent, fontWeight: .bold),
          textScaler: TextScaler.linear(1.5),
        ),
      ),
    );
  }
}
