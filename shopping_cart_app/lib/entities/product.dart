import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final String description;
  final int price;
  final String image;

  const Product(
      {required this.name,
      required this.description,
      required this.price,
      required this.image});

  @override
  List<Object?> get props => [name, description, price, image];
}
