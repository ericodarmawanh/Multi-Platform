part of 'cart_bloc.dart';

abstract class CartState extends Equatable {
  const CartState();

  @override
  List<Object> get props => [];
}

class CartEmpty extends CartState {}

class CartLoaded extends CartState {
  final List<OrderedProduct> orderedProducts;

  const CartLoaded(this.orderedProducts);

  int get total => orderedProducts.fold(
      0, (previousValue, element) => previousValue + element.subtotal);

  int get totalQuantity => orderedProducts.fold(
        0,
        (previousValue, element) => previousValue + element.quantity,
      );

  bool contains(Product product) {
    for (var orderedProduct in orderedProducts) {
      if (orderedProduct.product == product) {
        return true;
      }
    }

    return false;
  }

  OrderedProduct? getOrderedProduct(Product product) {
    var result = orderedProducts.where((element) => element.product == product);
    if (result.isEmpty) {
      return null;
    } else {
      return result.first;
    }
  }

  @override
  List<Object> get props => [orderedProducts];
}
