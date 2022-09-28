import 'package:flutter/material.dart';

import '../../entities/category.dart';

class CategoryThumbnail extends StatelessWidget {
  final Category category;
  const CategoryThumbnail({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(boxShadow: const [
            BoxShadow(
                offset: Offset(2, 2),
                color: Colors.black26,
                blurRadius: 2,
                spreadRadius: 2)
          ], color: Colors.white, borderRadius: BorderRadius.circular(10)),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          category.name,
          style: const TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
