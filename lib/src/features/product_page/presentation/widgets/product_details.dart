import 'package:flutter/material.dart';
import 'package:agro_app/src/core/theme/theme.dart';
import 'package:agro_app/src/features/product_page/presentation/widgets/product_tile.dart';

import 'similar_products.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: context.theme.lightGrey,
        child: const Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 8),
              ProductTile(),
              SizedBox(height: 20),
              SimilarProducts(),
            ],
          ),
        ),
      ),
    );
  }
}
