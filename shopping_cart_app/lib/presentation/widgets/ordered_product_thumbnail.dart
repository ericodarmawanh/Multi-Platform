import 'package:flutter/material.dart';
import 'package:shopping_cart_app/entities/ordered_product.dart';

class OrderedProductThumbnail extends StatelessWidget {
  final OrderedProduct orderedProduct;

  const OrderedProductThumbnail({super.key, required this.orderedProduct});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          orderedProduct.product.name,
          style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
        ),
        Text(
          '${orderedProduct.product.price}',
          style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
        ),
        Text(
          '${orderedProduct.quantity}',
          style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
        ),
        Text(
          '${orderedProduct.subtotal}',
          style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
