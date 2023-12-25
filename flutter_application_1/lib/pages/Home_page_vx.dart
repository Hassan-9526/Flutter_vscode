// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/models/Catalog.dart';
import 'package:flutter_application_1/models/cart.dart';
import 'package:flutter_application_1/pages/Home_detail_page.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:flutter_application_1/widgets/item_widgets.dart';
import 'package:flutter_application_1/widgets/themes.dart';

class HomePagevx extends StatefulWidget {
  HomePagevx({Key? key}) : super(key: key);

  @override
  State<HomePagevx> createState() => _HomePageState();
}

class _HomePageState extends State<HomePagevx> {
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
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 8, 52, 146),
        onPressed: () {
          Navigator.pushNamed(context, MyRoutes.Cart);
        },
        child: Icon(Icons.shopping_cart_checkout, color: Colors.white),
      ),
      backgroundColor: Theme.of(context).cardColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SafeArea(
            child: CatalogHeader(),
            bottom: false,
          ),
          if (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
            Expanded(child: cataloglist())
          else
            Expanded(child: Center(child: CircularProgressIndicator()))
        ],
      ),
    );
  }
}

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(color: Colors.cyan),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Text(
              "Catalog App",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: MyThemes.darkblue,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              "Trending Products",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class cataloglist extends StatelessWidget {
  const cataloglist({super.key});

  @override
  Widget build(context) {
    return ListView.builder(
      itemCount: CatalogModel.items.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.getbyPosition(index);

        return InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => homedetail(catalog: catalog))),
            child: CatalogItem(Catalog: catalog));
      },
    );
  }
}

class CatalogItem extends StatelessWidget {
  final Item Catalog;

  const CatalogItem({super.key, required this.Catalog});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 13, bottom: 20, top: 2, right: 13),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color.fromARGB(255, 73, 70, 159),
      ),
      height: 130,
      width: 100,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Hero(
              tag: Key(Catalog.id.toString()),
              child: catalogimage(Image1: Catalog.image)),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(Catalog.name,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.bold)),
                Text(
                  Catalog.desc,
                  style: TextStyle(color: MyThemes.cream, fontSize: 18),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$${Catalog.price}",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    _Addtocart(catalog: Catalog),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class catalogimage extends StatelessWidget {
  final String Image1;
  const catalogimage({
    Key? key,
    required this.Image1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, top: 10, bottom: 10, right: 5),
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: MyThemes.cream,
          ),
          height: 200,
          width: 120,
          // margin: EdgeInsets.only(left: 20),
          child: Image.network(Image1)),
    );
  }
}

class _Addtocart extends StatefulWidget {
  final Item catalog;
  const _Addtocart({
    required this.catalog,
  });
  @override
  State<_Addtocart> createState() => _AddtocartState();
}

class _AddtocartState extends State<_Addtocart> {
  bool isadded = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.white),
            shape:
                MaterialStatePropertyAll(StadiumBorder(side: BorderSide.none))),
        onPressed: () {
          isadded = !isadded;
          final _catalog = CatalogModel();
          final _cart = Cartmodel();
          _cart.catalog = _catalog;
          _cart.add(widget.catalog);
          setState(() {});
        },
        child: isadded
            ? Icon(Icons.done)
            : Text(
                "Add to cart",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ));
  }
}
