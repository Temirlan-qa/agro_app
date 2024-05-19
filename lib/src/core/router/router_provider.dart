import 'package:agro_app/src/features/advertising-page/presentation/advertising_page.dart';
import 'package:agro_app/src/features/create_product/presentation/create_product_page.dart';
import 'package:agro_app/src/features/create_product/presentation/create_product_page_arguments.dart';
import 'package:agro_app/src/features/main_page/presentation/main_page.dart';
import 'package:agro_app/src/features/product_page/presentation/product_page.dart';
import 'package:agro_app/src/features/product_page/product_page_arguments.dart';
import 'package:agro_app/src/features/sign_in/presentation/sign_in_page.dart';
import 'package:agro_app/src/features/sign_up/presentation/sign_up_page.dart';
import 'package:agro_app/src/features/user_products/presentation/user_products_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../features/categories/presentation/categories_page.dart';
import '../../features/profile/presentation/screens/about_application_page.dart';
import '../../features/profile/presentation/screens/about_project_page.dart';
import '../../features/profile/presentation/screens/edit_user_info_page.dart';
import '../../features/profile/presentation/screens/password_page.dart';
import '../../features/profile/presentation/screens/settings_page.dart';
import '../../features/profile/presentation/screens/show_user_info_page.dart';
import '../../features/profile/presentation/screens/update_password_page.dart';

part 'route_list.dart';
part 'route_transitions.dart';
part 'router_names.dart';
part 'router_paths.dart';

final routerProvider = Provider.autoDispose((ref) {
  return GoRouter(
    initialLocation: RoutePaths.main,
    debugLogDiagnostics: true,
    routes: _routes(),
  );
});
