import 'package:equatable/equatable.dart';
import 'package:shopping_cart_app/entities/product.dart';

class OrderedProduct extends Equatable {
  final Product product;
  final int quantity;

  const OrderedProduct({required this.product, required this.quantity});

  int get subtotal => quantity * product.price;

  OrderedProduct copyWith({Product? product, int? quantity}) => OrderedProduct(
      product: product ?? this.product, quantity: quantity ?? this.quantity);

  @override
  List<Object?> get props => [product, quantity];
}
