import 'package:agro_app/generated/l10n.dart';
import 'package:agro_app/src/core/router/auth_provider.dart';
import 'package:agro_app/src/core/router/router_provider.dart';
import 'package:agro_app/src/core/theme/theme.dart';
import 'package:agro_app/src/core/utils/helpers/popup_helper.dart';
import 'package:agro_app/src/features/products/presentation/notifier/products_page_notifier.dart';
import 'package:agro_app/src/features/products/presentation/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ProductsList extends ConsumerWidget {
  const ProductsList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = ref
        .watch(productsPageNotifierProvider.select((value) => value.isLoading));
    final products = ref
        .watch(productsPageNotifierProvider.select((value) => value.products));

    final isLoggedIn = ref.watch(authProvider);
    return Padding(
      padding: const EdgeInsets.all(10),
      child: products.isEmpty && !isLoading
          ? Container(
              color: context.theme.scaffoldBackground,
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  S.of(context).productListIsEmpty,
                  style: context.theme.textStyles.h5,
                ),
              ),
            )
          : ListView.separated(
              itemCount: products.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  FocusScope.of(context).unfocus();
                  if (isLoggedIn) {
                    context.pushNamed(
                      RouteNames.product,
                      extra: products[index].id,
                    );
                    return;
                  }
                  PopupHelper().authRequiredPopup(context);
                },
                child: ProductItem(
                  product: products[index],
                  favoriteIcon: Icon(
                    products[index].isFavorite
                        ? Icons.favorite
                        : Icons.favorite_outline,
                    color: context.theme.red,
                  ),
                  isLoggedIn: isLoggedIn,
                  onFavoriteTap: () {
                    FocusScope.of(context).unfocus();
                    ref
                        .read(productsPageNotifierProvider.notifier)
                        .favoriteToggle(products[index].id);
                  },
                ),
              ),
              separatorBuilder: (context, index) => const SizedBox(
                height: 15,
              ),
            ),
    );
  }
}
