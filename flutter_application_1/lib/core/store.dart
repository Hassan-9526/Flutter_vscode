// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_application_1/models/Catalog.dart';
import 'package:flutter_application_1/models/cart.dart';

class mystore extends VxStore {
  late CatalogModel catalog;
  late Cartmodel cart;

  mystore() {
    catalog = CatalogModel();
    cart = Cartmodel();
    cart.catalog = catalog;
  }
}
