import 'package:agro_app/src/core/enum/product_enums.dart';
import 'package:agro_app/src/core/theme/theme.dart';
import 'package:agro_app/src/core/widgets/custom_widget_with_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../core/widgets/custom_search_app_bar.dart';
import 'notifier/products_page_notifier.dart';
import 'widgets/category_box_list.dart';
import 'widgets/faqs_list.dart';
import 'widgets/products_list.dart';

class ProductsPage extends ConsumerStatefulWidget {
  const ProductsPage({super.key});

  @override
  ConsumerState<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends ConsumerState<ProductsPage> {
  ProductsPageNotifier? _notifier;
  final _searchProductsController = TextEditingController();
  final _searchProductsFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _notifier = ref.read(productsPageNotifierProvider.notifier);
      _notifier?.init(context);
    });
  }

  @override
  void dispose() {
    _searchProductsController.dispose();
    _searchProductsFocusNode.dispose();
    _notifier?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isLoading = ref
        .watch(productsPageNotifierProvider.select((value) => value.isLoading));
    final selectedCategory = ref.watch(
        productsPageNotifierProvider.select((value) => value.selectedCategory));
    final faqs =
        ref.watch(productsPageNotifierProvider.select((value) => value.faqs));
    return Scaffold(
      backgroundColor: context.theme.primary,
      body: Column(
        children: [
          CustomSearchAppBar(
            controller: _searchProductsController,
            focusNode: _searchProductsFocusNode,
            onChanged: (value) => _notifier?.searchProducts(value),
          ),
          Expanded(
            child: CustomWidgetWithLoader(
              isLoading: isLoading,
              child: SmartRefresher(
                controller: ref
                    .read(productsPageNotifierProvider.notifier)
                    .refreshController,
                onRefresh: ref
                    .read(productsPageNotifierProvider.notifier)
                    .refreshProducts,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      CategoryBoxList(
                        categories: Category.values
                            .where((element) => element != Category.none)
                            .map((e) => getCategoryTitle(e))
                            .toList(),
                        icons: Category.values
                            .where((element) => element != Category.none)
                            .map((e) => e.getIcon)
                            .toList(),
                        onTap: (category) {
                          ref
                              .read(productsPageNotifierProvider.notifier)
                              .setSelectedCategory(category.getCategory());
                        },
                        selected: selectedCategory == Category.faq
                            ? getCategoryTitle(selectedCategory)
                            : null,
                        onRemove: () {
                          ref
                              .read(productsPageNotifierProvider.notifier)
                              .setSelectedCategory(Category.none);
                        },
                      ),
                      if (selectedCategory == Category.faq)
                        FaqsList(faqs: faqs)
                      else
                        const ProductsList(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
