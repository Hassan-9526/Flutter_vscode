// import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/Catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({super.key, required this.item});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white70,
      child: ListTile(
        onTap: () {
          print("infinix hot 11s pressed");
        },
        leading: Image.network(item.image),
        title: Text(
          item.name,
          style: TextStyle(color: Colors.black),
        ),
        subtitle: Text(
          item.desc,
          style: TextStyle(color: Colors.black),
        ),
        horizontalTitleGap: 15,
        enableFeedback: true,
        trailing: Text(
          "${item.price.toString()}rs",
          style: TextStyle(fontSize: 25, color: Colors.blueGrey),
        ),
      ),
    );
  }
}
