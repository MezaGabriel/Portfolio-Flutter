import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../models/models.dart';

class ProductService extends ChangeNotifier {
  final String _baseUrl = 'flutter-varios-bee0a-default-rtdb.firebaseio.com';
  final List<Product> products = [];

  bool isLoading = true;

  ProductService() {
    this.loadProducts();
  }

  Future loadProducts() async {
    final url = Uri.https(_baseUrl, 'products.json');
    final resp = await http.get(url);

    final Map<String, dynamic> productsMap = json.decode(resp.body);

    productsMap.forEach((key, value) {
      final tempProduct = Product.fromMap(value);
      tempProduct.id = key;
      this.products.add(tempProduct);
    });
  }
}
