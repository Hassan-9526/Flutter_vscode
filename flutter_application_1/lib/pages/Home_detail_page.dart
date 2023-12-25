import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/Catalog.dart';
import 'package:flutter_application_1/models/cart.dart';
import 'package:flutter_application_1/pages/Home_page_vx.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class homedetail extends StatelessWidget {
  const homedetail({
    Key? key,
    required this.catalog,
  }) : super(key: key);
  final Item catalog;
  @override
  Widget build(BuildContext context) {
    bool isadded = false;
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          size: 37,
        ),
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: MyThemes.cream,
      body: SafeArea(
        child: Column(children: [
          Hero(
              tag: Key(catalog.id.toString()),
              child: Center(child: Image.network(catalog.image, height: 350))),
          // Hero(
          //     tag:
          //         'catalog_image_${catalog.id}', // Use the same unique tag for the Hero
          //     child: Center(child: Image.network(catalog.image, height: 350))),
          Expanded(
            child: VxArc(
              height: 30,
              arcType: VxArcType.convey,
              edge: VxEdge.top,
              child: Container(
                width: context.screenWidth,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Column(
                    children: [
                      Text(
                        catalog.name,
                        style: TextStyle(
                            fontSize: 45,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                        catalog.desc,
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "And a disporting relief thence his did time pollution he it, wrong adieu than he from one minstrels. Not calm. Esperienza noi e esser noi la non, e forza sí quella beati di, di in suoi principio sue dio sono.",
                          style: TextStyle(fontSize: 20, color: Colors.black54),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ]),
      ),
      bottomNavigationBar: Container(
        height: 100,
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "\$${catalog.price}",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.deepPurple.shade400),
                      shape: MaterialStatePropertyAll(
                          StadiumBorder(side: BorderSide.none))),
                  onPressed: () {
                    //             isadded = !isadded;
                    //  final  _catalog = CatalogModel();
                    //   final _cart = Cartmodel();
                    //   _cart.catalog = _catalog;
                    //   _cart.add(widget.catalog);
                    //   setState(() {});
                  },
                  child: Text(
                    "Add to cart",
                    style: TextStyle(fontSize: 23, color: Colors.white),
                  )).w40(context).h8(context),
            )
          ],
        ),
      ),
    );
  }
}
