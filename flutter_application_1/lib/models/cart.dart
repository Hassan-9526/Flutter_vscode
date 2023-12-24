// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_application_1/models/Catalog.dart';

class Cartmodel {
  // catalog field
  CatalogModel catalog;
  Cartmodel({
    required this.catalog,
  });
  //  get the ids of ids to  map with cart
  final List<int> itemids = [];
  //  map the items
  List<Item> get items => itemids.map((id) => catalog.getbyId(id)).toList();

  //get total price

  num get totalprice =>
      items.fold(0, (total, current) => total + current.price);

  //add item
  void add(Item item) {
    itemids.add(item.id);
  }

  // remove item
  void remove(Item item) {
    itemids.remove(item.id);
  }
}
