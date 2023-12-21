import 'package:flutter/material.dart';

import '../helper/api.dart';
import '../model/produc.dart';
class cat{

  Future<List<ProductModel>> getCategoriesProducts(
  {required String categoryName}) async {
  List<dynamic> data   =  await Api().get(url: 'https://fakestoreapi.com/products/category/$categoryName');

  List<ProductModel> productsList = [];
  for (int i = 0; i < data.length; i++) {
  productsList.add(
   ProductModel.fromJson(data[i]),
  );
  }

  return productsList;

  }
}