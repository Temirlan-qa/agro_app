import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:agro_app/src/core/enum/main_screen_tabs.dart';
import 'package:agro_app/src/core/theme/theme.dart';

import 'bottom_tab_button.dart';

class BottomNavBar extends ConsumerWidget {
  final int pageIndex;
  final List<MainScreenTabs> tabs;
  final ValueSetter<int> changePage;

  const BottomNavBar({
    Key? key,
    required this.pageIndex,
    required this.tabs,
    required this.changePage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          decoration: BoxDecoration(
            color: context.theme.white,
            boxShadow: [
              BoxShadow(
                color: context.theme.navBar.withOpacity(0.07),
                blurRadius: 10,
                offset: const Offset(0, -10),
              ),
            ],
          ),
          child: Row(
            children: List.generate(
              tabs.length,
              (index) {
                return BottomTabButton(
                  icon: tabs[index].tabAsset(),
                  isSelected: pageIndex == index,
                  onTap: () => changePage(index),
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
