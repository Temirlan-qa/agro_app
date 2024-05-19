import 'package:agro_app/src/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';

import 'category_item.dart';

class CategoryBoxList extends ConsumerWidget {
  final List<String> categories;
  final ValueSetter<String> onTap;
  final List<IconData>? icons;
  final String? selected;
  final VoidCallback? onRemove;

  const CategoryBoxList({
    super.key,
    required this.categories,
    required this.onTap,
    this.icons,
    this.selected,
    this.onRemove,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (categories.isEmpty) {
      return const SizedBox();
    }
    return ColoredBox(
      color: context.theme.scaffoldBackground,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: GridView.count(
          crossAxisCount: 2,
          shrinkWrap: true,
          childAspectRatio: 2.5,
          physics: const NeverScrollableScrollPhysics(),
          children: categories
              .mapWithIndex(
                (category, index) => Center(
                  child: CategoryItem(
                    title: category,
                    icon: icons?[index],
                    onTap: () {
                      onTap(category);
                    },
                    selected: selected == category,
                    onRemove: onRemove,
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
