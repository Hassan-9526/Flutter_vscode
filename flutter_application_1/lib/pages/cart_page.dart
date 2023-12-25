import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/Catalog.dart';
import 'package:flutter_application_1/models/cart.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(size: 24, color: Colors.black),
          title: Text(
            "Cart",
            style: TextStyle(fontSize: 40, fontStyle: FontStyle.italic),
          ),
          // backgroundColor: Colors.transparent,
        ),
        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(32),
                child: _cartlist(),
              ),
            ),
            Divider(),
            _Carttotal(),
          ],
        ));
  }
}

class _Carttotal extends StatelessWidget {
  _Carttotal({super.key});

  @override
  final cart = Cartmodel();

  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "\$${cart.totalprice}",
            style: TextStyle(
                fontSize: 39,
                fontWeight: FontWeight.w500,
                color: MyThemes.darkblue),
          ).p(20),
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("Buying not supported yet."),
              ));
            },
            child: Text(
              "Buy",
              style: TextStyle(color: Colors.white, fontSize: 23),
            ),
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(MyThemes.darkblue)),
          ).w32(context).p(20)
        ],
      ),
    );
  }
}

class _cartlist extends StatefulWidget {
  const _cartlist({super.key});

  @override
  State<_cartlist> createState() => __cartlistState();
}

class __cartlistState extends State<_cartlist> {
  @override
  final cart = Cartmodel();
  final catalog = CatalogModel();
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: cart.items?.length,
        itemBuilder: (context, index) => ListTile(
              leading: Icon(Icons.done),
              // tileColor: MyThemes.darkblue,
              trailing: IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
              title: Text(cart.items[index].name),
            ));
  }
}
