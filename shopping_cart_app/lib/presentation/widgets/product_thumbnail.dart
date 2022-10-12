import 'package:flutter/material.dart';

import '../../entities/product.dart';

class ProductThumbnail extends StatelessWidget {
  final Product product;
  final void Function()? onTap;

  const ProductThumbnail({super.key, required this.product, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Text(
            product.name,
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            product.price.toString(),
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
