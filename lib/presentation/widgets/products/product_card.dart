import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String productName;
  final String productBrand;
  final String productImageUrl;
  final double productRegularPrice;

  const ProductCard({
    super.key,
    required this.productName,
    required this.productRegularPrice,
    required this.productBrand,
    required this.productImageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: InkWell(
        onTap: () {
          // Aquí puedes agregar la acción al tocar el producto
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Imagen del producto
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  productImageUrl,
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 12),
              // Detalles del producto
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      productName,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFF0F1111),
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Prime FREE Delivery',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'By $productBrand',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                      ),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        ...List.generate(5, (index) {
                          return Icon(
                            index < 4.floor() ? Icons.star : Icons.star_border,
                            color: const Color(0xFFFFA41C),
                            size: 18,
                          );
                        }),
                        const SizedBox(width: 4),
                        Text(
                          1.toStringAsFixed(1),
                          style: const TextStyle(
                            color: Color(0xFF0F1111),
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '\$${productRegularPrice.toStringAsFixed(2)}',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFB12704),
                      ),
                    ),
                    const SizedBox(height: 8),
                    ElevatedButton(
                      onPressed: () {
                        // Aquí puedes agregar la acción de añadir al carrito
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFFFD814),
                        foregroundColor: const Color(0xFF0F1111),
                        minimumSize: Size(200, 40),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: const Text('Add to Cart'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
