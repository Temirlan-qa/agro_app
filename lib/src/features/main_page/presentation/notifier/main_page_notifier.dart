import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:agro_app/src/core/enum/product_enums.dart';
import 'package:agro_app/src/core/router/auth_provider.dart';
import 'package:agro_app/src/core/router/router_provider.dart';
import 'package:agro_app/src/core/service/injectable/injectable_service.dart';
import 'package:agro_app/src/core/utils/helpers/popup_helper.dart';
import 'package:agro_app/src/features/category_boxes_page/presentation/category_boxes_page_arguments.dart';
import 'package:agro_app/src/features/countries/presentation/notifier/countries_notifier.dart';
import 'package:agro_app/src/features/profile/domain/usecase/get_user_info_use_case.dart';

import '../../../profile/presentation/notifier/profile_notifier.dart';
import 'main_page_state.dart';

final mainPageNotifierProvider =
    StateNotifierProvider.autoDispose<MainPageNotifier, MainPageState>(
  (ref) {
    final getUserInfoUseCase = getIt<GetUserInfoUseCase>();
    return MainPageNotifier(ref, getUserInfoUseCase);
  },
);

class MainPageNotifier extends StateNotifier<MainPageState> {
  final Ref _ref;
  late final BuildContext _context;
  final GetUserInfoUseCase _getUserInfoUseCase;

  MainPageNotifier(this._ref, this._getUserInfoUseCase)
      : super(MainPageState());

  void init(BuildContext context) {
    _context = context;
    getUserInfo();
    _ref.read(countryNotifierProvider.notifier).init();
  }

  Future<void> getUserInfo() async {
    final result = await _getUserInfoUseCase();
    if (result.isSuccessful) {
      _ref.read(authProvider.notifier).setUser(result.data!);
      _ref
          .read(profileNotifierProvider.notifier)
          .getUpdateUserData(result.data!);
    }
  }

  Future<void> changePage(
    int index, {
    Category? selectedCategory,
  }) async {
    FocusScope.of(_context).unfocus();
    final isAuth = _ref.read(authProvider);

    if (index != 0 && !isAuth) {
      await PopupHelper().authRequiredPopup(_context);
      return;
    }
    if (index == 2) {
      _context.pushNamed(RouteNames.createOrUpdateProduct);
      return;
    }

    if (selectedCategory != null && state.categoryBoxesPageContext != null) {
      Navigator.of(state.categoryBoxesPageContext!).pushNamed('/',
          arguments: CategoryBoxesPageArguments(category: selectedCategory));
    }
    state = state.copyWith(pageIndex: index);
  }

  void setCategoryBoxesPageContext(BuildContext context) {
    if (state.categoryBoxesPageContext != null) {
      return;
    }
    state = state.copyWith(categoryBoxesPageContext: context);
  }
}
