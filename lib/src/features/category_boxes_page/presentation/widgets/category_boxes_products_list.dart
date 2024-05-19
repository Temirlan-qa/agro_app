import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:agro_app/generated/l10n.dart';
import 'package:agro_app/src/core/router/auth_provider.dart';
import 'package:agro_app/src/core/router/router_provider.dart';
import 'package:agro_app/src/core/theme/theme.dart';
import 'package:agro_app/src/core/utils/helpers/popup_helper.dart';
import 'package:agro_app/src/features/category_boxes_page/presentation/notifier/category_boxes_notifier.dart';
import 'package:agro_app/src/features/products/presentation/widgets/product_item.dart';

class CategoryBoxesProductsList extends ConsumerWidget {
  final BuildContext providerContext;

  const CategoryBoxesProductsList({
    super.key,
    required this.providerContext,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final products = ref.watch(categoryBoxesNotifierProvider(providerContext)
        .select((value) => value.products));

    final isLoggedIn = ref.watch(authProvider);
    if (products.isEmpty) {
      return Container(
        color: context.theme.scaffoldBackground,
        child: Align(
          alignment: Alignment.topCenter,
          child: Text(
            S.of(context).productListIsEmpty,
            style: context.theme.textStyles.h5,
          ),
        ),
      );
    }
    return ListView.separated(
      itemCount: products.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 15),
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
                .read(categoryBoxesNotifierProvider(providerContext).notifier)
                .favoriteToggle(products[index].id);
          },
        ),
      ),
      separatorBuilder: (context, index) => const SizedBox(
        height: 15,
      ),
    );
  }
}
