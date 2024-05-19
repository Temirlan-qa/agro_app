import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  final String image;
  final double height;

  const ProductImage({
    super.key,
    required this.image,
    this.height = 200,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        image,
        fit: BoxFit.cover,
        height: height,
        width: double.infinity,
      ),
    );
  }
}
