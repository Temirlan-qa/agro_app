import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:agro_app/src/core/theme/theme.dart';
import 'package:agro_app/src/core/widgets/custom_widget_with_loader.dart';
import 'package:agro_app/src/features/category_boxes_page/presentation/category_boxes_page_arguments.dart';
import 'package:agro_app/src/features/products/presentation/widgets/category_box_list.dart';

import 'notifier/category_boxes_notifier.dart';
import 'widgets/category_boxes_products_list.dart';

class CategoryBoxesPage extends ConsumerStatefulWidget {
  final CategoryBoxesPageArguments? arguments;

  const CategoryBoxesPage({
    super.key,
    this.arguments,
  });

  @override
  ConsumerState<CategoryBoxesPage> createState() => _CategoryBoxesPageState();
}

class _CategoryBoxesPageState extends ConsumerState<CategoryBoxesPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(categoryBoxesNotifierProvider(context).notifier)
          .init(widget.arguments);
    });
  }

  @override
  Widget build(BuildContext context) {
    final isLoading = ref.watch(categoryBoxesNotifierProvider(context)
        .select((value) => value.isLoading));
    final categories = ref.watch(categoryBoxesNotifierProvider(context)
        .select((value) => value.categories));
    final barTitle = ref.watch(categoryBoxesNotifierProvider(context)
        .select((value) => value.barTitle));

    return Scaffold(
      backgroundColor: context.theme.primary,
      body: Column(
        children: [
          ColoredBox(
            color: context.theme.primary,
            child: Row(
              children: [
                const SizedBox(width: 10),
                IconButton(
                  onPressed: ref
                      .watch(categoryBoxesNotifierProvider(context).notifier)
                      .popRoute,
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: Text(
                    barTitle,
                    style: context.theme.textStyles.h2
                        .copyWith(color: context.theme.white),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: CustomWidgetWithLoader(
              isLoading: isLoading,
              child: SmartRefresher(
                controller: ref
                    .read(categoryBoxesNotifierProvider(context).notifier)
                    .refreshController,
                onRefresh: ref
                    .read(categoryBoxesNotifierProvider(context).notifier)
                    .refreshProducts,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      CategoryBoxList(
                        categories: categories,
                        onTap: (category) {
                          ref
                              .watch(categoryBoxesNotifierProvider(context)
                                  .notifier)
                              .onTap(category);
                        },
                      ),
                      const SizedBox(height: 10),
                      CategoryBoxesProductsList(providerContext: context),
                      const SizedBox(height: 20),
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
