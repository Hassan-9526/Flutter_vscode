import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/models/Catalog.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:flutter_application_1/widgets/item_widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;

  final String name = "hassan";
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 3));
    var catalogjson = await rootBundle.loadString("assets/files/catalog.json");
    var decoded = jsonDecode(catalogjson);
    var productsdata = decoded["products"];
    CatalogModel.items = List.from(productsdata)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    bool theme = false;
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
              ? GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    final item = CatalogModel.items[index];

                    return Card(
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: GridTile(
                            header: Container(
                                child: Text(
                                  item.name,
                                  style: TextStyle(color: Colors.white),
                                ),
                                padding: EdgeInsets.all(12),
                                decoration:
                                    BoxDecoration(color: Colors.deepPurple)),
                            footer: Text(item.price.toString()),
                            child: Image.network(item.image)));
                  },
                  itemCount: CatalogModel.items.length,
                )
              : Center(
                  child: CircularProgressIndicator(),
                )),
      floatingActionButton: FloatingActionButton(
        child: Text("back"),
        onPressed: () {
          Navigator.pushNamed(context, MyRoutes.loginroute);
        },
      ),
      drawer: Mydrawer(),
      bottomNavigationBar: BottomAppBar(
        color: Colors.greenAccent,
        height: 50,
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
