part of 'cart_bloc.dart';

abstract class CartEvent extends Equatable {
  const CartEvent();

  @override
  List<Object> get props => [];
}

class AddToCart extends CartEvent {
  final OrderedProduct orderedProduct;

  const AddToCart(this.orderedProduct);

  @override
  List<Object> get props => [orderedProduct];
}

class RemoveFromCart extends CartEvent {
  final OrderedProduct orderedProduct;

  const RemoveFromCart(this.orderedProduct);

  @override
  List<Object> get props => [orderedProduct];
}
