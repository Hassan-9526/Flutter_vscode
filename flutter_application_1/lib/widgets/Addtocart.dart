import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/Catalog.dart';
import 'package:flutter_application_1/models/cart.dart';
import 'package:flutter_application_1/widgets/themes.dart';

class Addtocart extends StatefulWidget {
  final Item catalog;
  const Addtocart({
    required this.catalog,
  });

  @override
  State<Addtocart> createState() => _AddtocartState();
}

class _AddtocartState extends State<Addtocart> {
  final _cart = Cartmodel();
  @override
  Widget build(BuildContext context) {
    bool isInCart = _cart.items.contains(widget.catalog) ?? false;
    return ElevatedButton(
      style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(MyThemes.cream),
          shape:
              MaterialStatePropertyAll(StadiumBorder(side: BorderSide.none))),
      onPressed: () {
        isInCart = !isInCart;
        if (!isInCart) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text("Already in cart"),
            action: SnackBarAction(label: "close", onPressed: () {}),
          ));
        } else {
          final _catalog = CatalogModel();
          _cart.catalog = _catalog;
          _cart.add(widget.catalog);
          setState(() {});
        }
      },
      child: isInCart
          ? Icon(Icons.done)

          // Icon(CupertinoIcons.cart_fill_badge_plus)
          : Text("Add to cart",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
    );
  }
}
