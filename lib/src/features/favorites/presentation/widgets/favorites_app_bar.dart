import 'package:flutter/material.dart';
import 'package:agro_app/generated/l10n.dart';
import 'package:agro_app/src/core/theme/theme.dart';

class FavoritePageAppBar extends StatelessWidget {
  const FavoritePageAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.theme.primary,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 13),
            child: Text(
              S.of(context).favorites,
              style: context.theme.textStyles.h1,
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
