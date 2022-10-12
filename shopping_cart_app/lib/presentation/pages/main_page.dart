import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_cart_app/entities/ordered_product.dart';
import 'package:shopping_cart_app/entities/product.dart';
import 'package:shopping_cart_app/presentation/widgets/product_thumbnail.dart';

import '../bloc/cart_bloc.dart';
import 'cart_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  final List<Product> products = const [
    Product(
        name: 'Sepatu',
        description: 'Sepatu kaca',
        price: 150000,
        image: 'image'),
    Product(
        name: 'Indomie',
        description: 'Indomie enak',
        price: 1500,
        image: 'image')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BlocBuilder<CartBloc, CartState>(
          builder: (context, state) {
            return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CartPage(),
                      ));
                },
                child:
                    Text(state is CartLoaded ? '${state.totalQuantity}' : '-'));
          },
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: products
                .map((e) => ProductThumbnail(
                      product: e,
                      onTap: () {
                        context.read<CartBloc>().add(
                            AddToCart(OrderedProduct(product: e, quantity: 1)));
                      },
                    ))
                .toList(),
          )
        ],
      ),
    );
  }
}
