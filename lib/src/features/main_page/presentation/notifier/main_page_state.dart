import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:agro_app/src/features/products/domain/entities/product_entity.dart';

part 'main_page_state.freezed.dart';

@freezed
class MainPageState with _$MainPageState {
  factory MainPageState({
    @Default(0) int pageIndex,
    @Default([]) List<ProductEntity> products,
    @Default(false) bool isLoading,
    BuildContext? categoryBoxesPageContext,
  }) = _MainPageState;
}
