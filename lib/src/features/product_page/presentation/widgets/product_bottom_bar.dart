import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:agro_app/generated/l10n.dart';
import 'package:agro_app/src/core/router/router_provider.dart';
import 'package:agro_app/src/core/theme/theme.dart';
import 'package:agro_app/src/core/widgets/custom_button.dart';
import 'package:agro_app/src/features/create_product/presentation/create_product_page_arguments.dart';
import 'package:agro_app/src/features/product_page/presentation/notifier/product_page_notifier.dart';

class ProductBottomBar extends ConsumerWidget {
  const ProductBottomBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final product =
        ref.watch(productPageNotifierProvider.select((value) => value.product));
    return Padding(
      padding: const EdgeInsets.only(left: 35, top: 10, right: 35),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              height: 48,
              onTap: () {
                if (product.isOwnProduct) {
                  context.pop();
                  context.pushNamed(
                    RouteNames.createOrUpdateProduct,
                    extra: CreateProductPageArgument(
                      product: product,
                    ),
                  );
                }
              },
              buttonColor: context.theme.secondary,
              title: product.isOwnProduct
                  ? S.of(context).editProduct
                  : S.of(context).buy,
            ),
          ),
        ],
      ),
    );
  }
}
