import 'package:flutter/material.dart';
import 'package:agro_app/generated/l10n.dart';
import 'package:agro_app/src/core/theme/theme.dart';

class CreateProductAppBar extends StatelessWidget {
  final bool isUpdatingProduct;
  const CreateProductAppBar({
    super.key,
    this.isUpdatingProduct = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.theme.primary,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 13),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  isUpdatingProduct
                      ? S.of(context).editProduct
                      : S.of(context).createProduct,
                  style: context.theme.textStyles.h1,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.close,
                    color: context.theme.white,
                  ),
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 1,
            color: context.theme.lightGrey,
          ),
        ],
      ),
    );
  }
}
