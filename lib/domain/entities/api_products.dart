class Product {
  final String productName;
  final String? productImgUrl;
  final String productBrand;
  final double productRegularPrice;

  Product({
    required this.productName,
    this.productImgUrl,
    required this.productRegularPrice,
    required this.productBrand,
  });
}
