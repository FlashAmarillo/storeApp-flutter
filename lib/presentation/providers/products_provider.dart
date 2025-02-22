import 'package:flutter/material.dart';
import 'package:yes_no_app/config/helpers/products_http.dart';
import 'package:yes_no_app/domain/entities/api_products.dart';

class ProductsProvider extends ChangeNotifier {
  // instancia para realizar la peticion
  final getProductsHttp = GetProductsHttp();

  // número de paginas con productos
  int productsPages = 0;

  // contador de la pagína actual
  int currentPage = 1;

  // lista de productos
  List<Product> productList = [];

  // funcion que llenara la lista de productos con los datos de la peticion
  Future<void> fetchAndFormatProducts() async {
    final productsResponse = await getProductsHttp.getProducts(currentPage);

    // Mapear los resultados de la lista de productos
    productList =
        productsResponse.results.map((result) {
          return Product(
            productName: result.title,
            productImgUrl: result.image.image,
            productBrand: result.brand,
            productRegularPrice: result.regularPrice,
          );
        }).toList();

    productsPages = productsResponse.pages;

    notifyListeners();
  }

  // Función para incrementar el contador de página
  void nextPage() {
    if (currentPage < productsPages) {
      currentPage++;
      fetchAndFormatProducts();
    }
  }

  // Función para decrementar el contador de página
  void previousPage() {
    if (currentPage > 1) {
      currentPage--;
      fetchAndFormatProducts();
    }

  }
}


