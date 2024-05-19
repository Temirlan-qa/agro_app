import 'package:flutter/material.dart';

enum MainScreenTabs {
  products,
  favorites,
  createProduct,
  chat,
  profile,
  categoryBoxes,
}

extension MainScreenPagesEnumExt on MainScreenTabs {
  IconData tabAsset() {
    switch (this) {
      case MainScreenTabs.products:
        return Icons.list_alt;
      case MainScreenTabs.favorites:
        return Icons.favorite_border_rounded;
      case MainScreenTabs.createProduct:
        return Icons.add_circle;
      case MainScreenTabs.chat:
        return Icons.chat;
      case MainScreenTabs.profile:
        return Icons.person;
      case MainScreenTabs.categoryBoxes:
        return Icons.home_outlined;
    }
  }
}
