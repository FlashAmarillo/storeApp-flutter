import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/presentation/providers/products_provider.dart';
import 'package:yes_no_app/presentation/widgets/products/product_card.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: NavBar(), body: _ProductList());
  }
}

class _ProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // referencia al provider
    final productProvider = context.watch<ProductsProvider>();

    productProvider.fetchAndFormatProducts();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: productProvider.productList.length,
                itemBuilder: (context, index) {
                  final productElement = productProvider.productList[index];

                  return ProductCard(
                    productName: productElement.productName,
                    productRegularPrice: productElement.productRegularPrice,
                    productBrand: productElement.productBrand,
                    productImageUrl: productElement.productImgUrl ?? '',
                  );
                },
              ),
            ),
            ProductsPagination(productProvider: productProvider),
          ],
        ),
      ),
    );
  }
}



// pagination
class ProductsPagination extends StatelessWidget {
  const ProductsPagination({
    super.key,
    required this.productProvider,
  });

  final ProductsProvider productProvider;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              productProvider.previousPage();
            },
          ),
          Text(
            'Page ${productProvider.currentPage} of ${productProvider.productsPages}',
            style: TextStyle(fontSize: 16),
          ),
          IconButton(
            icon: Icon(Icons.arrow_forward),
            onPressed: () {
              productProvider.nextPage();
            },
          ),
        ],
      ),
    );
  }
}



// navbar
class NavBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // propiedades de la barra superios de la pantalla
      backgroundColor: Color(0xff232f3e),

      leading: Padding(
        padding: EdgeInsets.all(4.0),
        child: IconButton(
          icon: Icon(Icons.menu, color: Colors.white),
          onPressed: () {},
        ),
      ),

      title: const Text('storeApp', style: TextStyle(color: Colors.white)),
      centerTitle: true,

      actions: [
        Padding(
          padding: EdgeInsets.all(4.0),
          child: IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
        ),
        Padding(
          padding: EdgeInsets.all(4.0),
          child: IconButton(
            icon: Icon(Icons.shopping_cart_outlined, color: Colors.white),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
