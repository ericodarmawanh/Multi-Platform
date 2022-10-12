import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_cart_app/presentation/widgets/ordered_product_thumbnail.dart';

import '../bloc/cart_bloc.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart Page'),
      ),
      body: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) {
          return state is CartLoaded
              ? Column(
                  children: state.orderedProducts
                      .map((e) => GestureDetector(
                          onTap: () {
                            context
                                .read<CartBloc>()
                                .add(RemoveFromCart(e.copyWith(quantity: 1)));
                          },
                          child: OrderedProductThumbnail(orderedProduct: e)))
                      .toList(),
                )
              : const SizedBox();
        },
      ),
    );
  }
}
