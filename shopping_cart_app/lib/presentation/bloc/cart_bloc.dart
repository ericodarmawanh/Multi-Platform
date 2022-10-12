import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:shopping_cart_app/entities/ordered_product.dart';
import 'package:shopping_cart_app/entities/product.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartEmpty()) {
    on<AddToCart>((event, emit) {
      if (state is CartEmpty) {
        emit(CartLoaded([event.orderedProduct]));
      } else {
        var cartLoaded = state as CartLoaded;
        if (cartLoaded.contains(event.orderedProduct.product)) {
          var orderedProduct =
              cartLoaded.getOrderedProduct(event.orderedProduct.product);

          emit(CartLoaded((cartLoaded.orderedProducts
                  .where((element) => element != orderedProduct)
                  .toList() +
              [
                event.orderedProduct.copyWith(
                    quantity: event.orderedProduct.quantity +
                        orderedProduct!.quantity)
              ])
            ..sort(
              (a, b) => a.product.name.compareTo(b.product.name),
            )));
        } else {
          emit(CartLoaded((cartLoaded.orderedProducts + [event.orderedProduct])
            ..sort(
              (a, b) => a.product.name.compareTo(b.product.name),
            )));
        }
      }
    });

    on<RemoveFromCart>((event, emit) {
      if (state is CartLoaded) {
        var cartLoaded = state as CartLoaded;

        if (cartLoaded.contains(event.orderedProduct.product)) {
          var orderedProduct =
              cartLoaded.getOrderedProduct(event.orderedProduct.product)!;

          int newQuantity =
              max(0, orderedProduct.quantity - event.orderedProduct.quantity);

          var temp = cartLoaded.orderedProducts
              .where((element) => element != orderedProduct)
              .toList();

          if (newQuantity != 0) {
            temp = temp + [orderedProduct.copyWith(quantity: newQuantity)];
          }

          emit(temp.isNotEmpty
              ? CartLoaded(temp
                ..sort(
                  (a, b) => a.product.name.compareTo(b.product.name),
                ))
              : CartEmpty());
        }
      }
    });
  }
}
