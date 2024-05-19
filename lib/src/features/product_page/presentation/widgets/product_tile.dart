import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:agro_app/generated/l10n.dart';
import 'package:agro_app/src/core/enum/product_enums.dart';
import 'package:agro_app/src/core/router/auth_provider.dart';
import 'package:agro_app/src/core/theme/theme.dart';
import 'package:agro_app/src/core/utils/helpers/popup_helper.dart';
import 'package:agro_app/src/features/product_page/presentation/notifier/product_page_notifier.dart';
import 'package:agro_app/src/features/product_page/presentation/widgets/product_image.dart';
import 'package:agro_app/src/features/products/domain/entities/product_entity.dart';

class ProductTile extends ConsumerStatefulWidget {
  const ProductTile({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProductTileState();
}

class _ProductTileState extends ConsumerState<ProductTile> {
  final CarouselController _carouselController = CarouselController();
  int _currentSlide = 0;

  @override
  Widget build(BuildContext context) {
    final product =
        ref.watch(productPageNotifierProvider.select((value) => value.product));
    final isLoggedIn = ref.watch(authProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (product.photoLinks.isNotEmpty) ...[
          CarouselSlider.builder(
            itemCount: product.photoLinks.length,
            carouselController: _carouselController,
            itemBuilder: (context, index, realIndex) {
              return ProductImage(
                image: product.photoLinks[index],
              );
            },
            options: CarouselOptions(
              scrollDirection: Axis.horizontal,
              enableInfiniteScroll: false,
              viewportFraction: 1,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentSlide = index;
                });
              },
            ),
          ),
          if (product.photoLinks.length > 1) ...[
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(product.photoLinks.length, (index) {
                return GestureDetector(
                  onTap: () => _carouselController.animateToPage(index),
                  child: Container(
                    width: 12.0,
                    height: 12.0,
                    margin: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 4.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _currentSlide == index
                          ? context.theme.secondary
                          : context.theme.white,
                    ),
                  ),
                );
              }).toList(),
            ),
          ],
        ],
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (product.created.isNotEmpty)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    S.of(context).published,
                    style: context.theme.textStyles.smallTips.copyWith(
                      color: context.theme.grey,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    product.created,
                    style: context.theme.textStyles.smallTips.copyWith(
                      color: context.theme.grey,
                    ),
                  ),
                ],
              )
          ],
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Text(
              product.title,
              style: context.theme.textStyles.h3.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
            if (isLoggedIn) ...[
              const Spacer(),
              if (!product.isOwnProduct) ...[
                GestureDetector(
                  onTap: () {
                    ref
                        .read(productPageNotifierProvider.notifier)
                        .toggleFavorite();
                  },
                  child: Icon(
                    product.isFavorite
                        ? Icons.favorite
                        : Icons.favorite_outline,
                    color: context.theme.red,
                  ),
                ),
                const SizedBox(width: 10),
                GestureDetector(
                  onTap: () {
                    PopupHelper().productActions(context);
                  },
                  child: Icon(
                    Icons.more_horiz,
                    color: context.theme.grey,
                  ),
                ),
                const SizedBox(width: 10),
              ],
            ],
          ],
        ),
        const SizedBox(height: 3),
        Text(
          product.description,
          style: context.theme.textStyles.cardRegular.copyWith(
            color: context.theme.grey,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 8),
        Text(
          '${product.price} ₸',
          style: context.theme.textStyles.h3.copyWith(
            fontWeight: FontWeight.w700,
            color: context.theme.black,
          ),
        ),
        const SizedBox(height: 10),
        RichText(
          text: TextSpan(
            text: '${S.current.dealType} ',
            style: context.theme.textStyles.cardRegular
                .copyWith(fontWeight: FontWeight.w500),
            children: [
              TextSpan(
                text: getProductTypeTitle(product.type),
                style: context.theme.textStyles.cardRegular.copyWith(
                  color: context.theme.grey,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        RichText(
          text: TextSpan(
            text: '${S.current.category} ',
            style: context.theme.textStyles.cardRegular
                .copyWith(fontWeight: FontWeight.w500),
            children: [
              TextSpan(
                text: getCategoryTitle(
                  product.category ?? Category.none,
                ),
                style: context.theme.textStyles.cardRegular.copyWith(
                  color: context.theme.grey,
                ),
              ),
            ],
          ),
        ),
        if (product.productCategory != null) ...[
          const SizedBox(height: 8),
          RichText(
            text: TextSpan(
              text: '${S.current.productCategory} ',
              style: context.theme.textStyles.cardRegular
                  .copyWith(fontWeight: FontWeight.w500),
              children: [
                TextSpan(
                  text: _getProductCategoryText(product),
                  style: context.theme.textStyles.cardRegular.copyWith(
                    color: context.theme.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
        if (product.additionalService != null) ...[
          const SizedBox(height: 8),
          RichText(
            text: TextSpan(
              text: '${S.current.serviceType} ',
              style: context.theme.textStyles.cardRegular
                  .copyWith(fontWeight: FontWeight.w500),
              children: [
                TextSpan(
                  text: getAdditionalServiceTitle(
                    product.additionalService!,
                  ),
                  style: context.theme.textStyles.cardRegular.copyWith(
                    color: context.theme.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
        if (product.specialization != null) ...[
          const SizedBox(height: 8),
          RichText(
            text: TextSpan(
              text: '${S.current.specialization} ',
              style: context.theme.textStyles.cardRegular
                  .copyWith(fontWeight: FontWeight.w500),
              children: [
                TextSpan(
                  text: getSpecializationTitle(
                    product.specialization!,
                  ),
                  style: context.theme.textStyles.cardRegular.copyWith(
                    color: context.theme.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
        const SizedBox(height: 8),
        RichText(
          text: TextSpan(
            text: '${S.current.storageType} ',
            style: context.theme.textStyles.cardRegular
                .copyWith(fontWeight: FontWeight.w500),
            children: [
              TextSpan(
                text: product.storageType.isEmpty
                    ? S.current.notChosen
                    : product.storageType,
                style: context.theme.textStyles.cardRegular.copyWith(
                  color: context.theme.grey,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        RichText(
          text: TextSpan(
            text: '${S.current.origin} ',
            style: context.theme.textStyles.cardRegular
                .copyWith(fontWeight: FontWeight.w500),
            children: [
              TextSpan(
                text: product.origin.isEmpty
                    ? S.current.notChosen
                    : product.origin,
                style: context.theme.textStyles.cardRegular.copyWith(
                  color: context.theme.grey,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        RichText(
          text: TextSpan(
            text: '${S.current.grade} ',
            style: context.theme.textStyles.cardRegular
                .copyWith(fontWeight: FontWeight.w500),
            children: [
              TextSpan(
                text:
                    product.grade.isEmpty ? S.current.notChosen : product.grade,
                style: context.theme.textStyles.cardRegular.copyWith(
                  color: context.theme.grey,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        RichText(
          text: TextSpan(
            text: '${S.current.humidity} ',
            style: context.theme.textStyles.cardRegular
                .copyWith(fontWeight: FontWeight.w500),
            children: [
              TextSpan(
                text: '34',
                style: context.theme.textStyles.cardRegular.copyWith(
                  color: context.theme.grey,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.person,
                    color: context.theme.primary,
                  ),
                  const SizedBox(width: 8),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${S.current.yearOfHarvest} ',
                          style: context.theme.textStyles.regular.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          product.year.toString().isEmpty
                              ? S.current.notChosen
                              : product.year.toString(),
                          style: context.theme.textStyles.tips.copyWith(
                            color: context.theme.grey,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        Container(
          color: context.theme.white,
          height: 1,
          width: double.infinity,
        ),
        const SizedBox(height: 20),
        RichText(
          text: TextSpan(
            text: '${S.current.location} ',
            style: context.theme.textStyles.cardRegular
                .copyWith(fontWeight: FontWeight.w500),
            children: [
              TextSpan(
                text: product.location.isEmpty
                    ? S.current.notSpecified
                    : product.location,
                style: context.theme.textStyles.cardRegular.copyWith(
                  color: context.theme.grey,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        RichText(
          text: TextSpan(
            text: '${S.current.phoneWhatsApp} ',
            style: context.theme.textStyles.cardRegular
                .copyWith(fontWeight: FontWeight.w500),
            children: [
              TextSpan(
                text: product.phoneWhatsapp.isEmpty
                    ? S.current.notSpecified
                    : product.phoneWhatsapp,
                style: context.theme.textStyles.cardRegular.copyWith(
                  color: context.theme.grey,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        RichText(
          text: TextSpan(
            text: '${S.current.telegramLink} ',
            style: context.theme.textStyles.cardRegular
                .copyWith(fontWeight: FontWeight.w500),
            children: [
              TextSpan(
                text: product.linkTelegram.isEmpty
                    ? S.current.notSpecified
                    : product.linkTelegram,
                style: context.theme.textStyles.cardRegular.copyWith(
                  color: context.theme.grey,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }

  String _getProductCategoryText(ProductEntity product) {
    return '${getProductCategoryTitle(
      product.productCategory!,
    )}${product.productSubCategory != null ? ', ${getProductSubCategoryTitle(product.productSubCategory!)}' : ''}';
  }
}
