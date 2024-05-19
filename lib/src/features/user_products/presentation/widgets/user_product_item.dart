import 'package:agro_app/generated/l10n.dart';
import 'package:agro_app/src/core/enum/product_enums.dart';
import 'package:agro_app/src/core/router/router_provider.dart';
import 'package:agro_app/src/core/theme/theme.dart';
import 'package:agro_app/src/core/utils/helpers/popup_helper.dart';
import 'package:agro_app/src/features/product_page/presentation/widgets/product_image.dart';
import 'package:agro_app/src/features/products/domain/entities/product_entity.dart';
import 'package:agro_app/src/features/products/presentation/widgets/product_photos_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class UserProductItem extends StatelessWidget {
  final ProductEntity product;
  final ValueSetter<String> onDelete;

  const UserProductItem({
    super.key,
    required this.product,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(
          RouteNames.product,
          extra: product.id,
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: context.theme.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: context.theme.lightGrey,
          ),
        ),
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  product.title,
                  style: context.theme.textStyles.h3.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    PopupHelper().userProductActions(
                      context,
                      product: product,
                      onDelete: onDelete,
                    );
                  },
                  child: Icon(
                    Icons.more_horiz,
                    color: context.theme.grey,
                  ),
                ),
                const SizedBox(width: 10)
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Text(
                  '${product.price} ₸',
                  style: context.theme.textStyles.cardRegular.copyWith(
                    color: context.theme.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
                const Spacer(),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (product.photoLinks.isNotEmpty) ...[
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return ProductPhotosPage(product: product);
                            },
                          ),
                        );
                      },
                      child: Hero(
                        tag: product.id,
                        child: ProductImage(
                          image: product.photoLinks.first,
                          height: 150,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                ],
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: '${S.of(context).serviceType} ',
                          style: context.theme.textStyles.cardRegular
                              .copyWith(fontWeight: FontWeight.w500),
                          children: [
                            TextSpan(
                              text: getAdditionalServiceTitle(
                                product.additionalService ??
                                    AdditionalService.none,
                              ),
                              style:
                                  context.theme.textStyles.cardRegular.copyWith(
                                color: context.theme.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                      RichText(
                        text: TextSpan(
                          text: '${S.of(context).storageType} ',
                          style: context.theme.textStyles.cardRegular
                              .copyWith(fontWeight: FontWeight.w500),
                          children: [
                            TextSpan(
                              text: product.storageType.isEmpty
                                  ? S.of(context).notSpecified
                                  : product.storageType,
                              style:
                                  context.theme.textStyles.cardRegular.copyWith(
                                color: context.theme.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                      RichText(
                        text: TextSpan(
                          text: '${S.of(context).origin} ',
                          style: context.theme.textStyles.cardRegular
                              .copyWith(fontWeight: FontWeight.w500),
                          children: [
                            TextSpan(
                              text: product.origin.isEmpty
                                  ? S.of(context).notChosen
                                  : product.origin,
                              style:
                                  context.theme.textStyles.cardRegular.copyWith(
                                color: context.theme.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                      RichText(
                        text: TextSpan(
                          text: '${S.of(context).yearOfHarvest} ',
                          style: context.theme.textStyles.cardRegular
                              .copyWith(fontWeight: FontWeight.w500),
                          children: [
                            TextSpan(
                              text: product.year == 0
                                  ? S.of(context).notSpecified
                                  : product.year.toString(),
                              style:
                                  context.theme.textStyles.cardRegular.copyWith(
                                color: context.theme.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Container(
              color: context.theme.lightGrey,
              height: 1,
              width: double.infinity,
            ),
            const SizedBox(height: 15),
            RichText(
              text: TextSpan(
                text: '${S.of(context).location} ',
                style: context.theme.textStyles.cardRegular
                    .copyWith(fontWeight: FontWeight.w500),
                children: [
                  TextSpan(
                    text: product.location.isNotEmpty
                        ? product.location
                        : S.of(context).notSpecified,
                    style: context.theme.textStyles.cardRegular.copyWith(
                      color: context.theme.grey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
