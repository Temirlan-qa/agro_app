import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:agro_app/generated/l10n.dart';
import 'package:agro_app/src/core/theme/theme.dart';

class ProductAppBar extends StatelessWidget {
  const ProductAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.theme.primary,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.white,
                ),
                onPressed: context.pop,
              ),
              Expanded(
                child: Text(
                  S.current.productInfo,
                  style: context.theme.textStyles.h1,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
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
