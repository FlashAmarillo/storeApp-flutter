import 'package:dio/dio.dart';
import 'package:yes_no_app/infrastructure/models/products.dart';

class GetProductsHttp {
  final _dio = Dio(
    BaseOptions(
      headers: {
        "Accept": "application/json, text/plain, */*",
        "x-apikey-marketplace": "rIH99Wc_HcMlonQTugzKySx5J31O2XgFJsLVJS8m9tF-Zyr01SfiwmvQZFVuqErM8soJeGV-RCgdSMXpT_25wg?page=1",
      },
    ),
  );

  Future<ProductsModel> getProducts(int page) async {
    final response = await _dio.get(
      'https://ds.deepcompany.com/marketplace/product-demo',
      queryParameters: {'page': page},
    );

    final productsAnswer = ProductsModel.fromJson(response.data);

    return productsAnswer;
  }
}
