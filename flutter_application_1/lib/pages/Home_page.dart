import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/models/Catalog.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:flutter_application_1/widgets/item_widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final int days = 30;

  final String name = "hassan";
  @override
  Widget build(BuildContext context) {
    bool theme = false;
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView.builder(
          itemCount: CatalogModel.item.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: CatalogModel.item[index],
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text("back"),
        onPressed: () {
          Navigator.pushNamed(context, MyRoutes.loginroute);
        },
      ),
      drawer: Mydrawer(),
      bottomNavigationBar: BottomAppBar(
        color: Colors.greenAccent,
        height: 30,
        child: Center(
            child: Container(
                child: Text(
          "For more queries contact us :03069820579",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ))),
      ),
    );
  }
}
