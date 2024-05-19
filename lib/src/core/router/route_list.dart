part of 'router_provider.dart';

const fadeTransitionBegin = 0.0;
const fadeTransitionEnd = 1.0;

List<RouteBase> _routes() => <RouteBase>[
      GoRoute(
        path: RoutePaths.signIn,
        name: RouteNames.signIn,
        pageBuilder: (context, state) => buildPageWithFadeTransition(
          context: context,
          state: state,
          child: const SignInPage(),
          begin: fadeTransitionBegin,
          end: fadeTransitionEnd,
        ),
      ),
      GoRoute(
        path: RoutePaths.main,
        name: RouteNames.main,
        pageBuilder: (context, state) => buildPageWithFadeTransition(
          context: context,
          state: state,
          begin: fadeTransitionBegin,
          end: fadeTransitionEnd,
          child: const MainPage(),
        ),
      ),
      GoRoute(
        path: RoutePaths.signUp,
        name: RouteNames.signUp,
        pageBuilder: (context, state) => buildPageWithFadeTransition(
          context: context,
          state: state,
          child: const SignUpPage(),
          begin: fadeTransitionBegin,
          end: fadeTransitionEnd,
        ),
      ),
      GoRoute(
        path: RoutePaths.product,
        name: RouteNames.product,
        pageBuilder: (context, state) => buildPageWithFadeTransition(
          context: context,
          state: state,
          child: ProductPage(
            productArguments: ProductPageArgument(
              id: state.extra as String,
            ),
          ),
          begin: fadeTransitionBegin,
          end: fadeTransitionEnd,
        ),
      ),
      GoRoute(
        path: RoutePaths.advertisingPage,
        name: RouteNames.advertisingPage,
        pageBuilder: (context, state) => buildPageWithFadeTransition(
          context: context,
          state: state,
          child: const AdvertisingPage(),
          begin: fadeTransitionBegin,
          end: fadeTransitionEnd,
        ),
      ),
      GoRoute(
        path: RoutePaths.aboutApp,
        name: RouteNames.aboutApp,
        pageBuilder: (context, state) => buildPageWithFadeTransition(
          context: context,
          state: state,
          begin: fadeTransitionBegin,
          end: fadeTransitionEnd,
          child: const AboutApplicationPage(),
        ),
      ),
      GoRoute(
        path: RoutePaths.aboutProject,
        name: RouteNames.aboutProject,
        pageBuilder: (context, state) => buildPageWithFadeTransition(
          context: context,
          state: state,
          begin: fadeTransitionBegin,
          end: fadeTransitionEnd,
          child: const AboutProjectPage(),
        ),
      ),
      GoRoute(
        path: RoutePaths.settings,
        name: RouteNames.settings,
        pageBuilder: (context, state) => buildPageWithFadeTransition(
          context: context,
          state: state,
          begin: fadeTransitionBegin,
          end: fadeTransitionEnd,
          child: const SettingsPage(),
        ),
      ),
      GoRoute(
        path: RoutePaths.editUserInfo,
        name: RouteNames.editUserInfo,
        pageBuilder: (context, state) => buildPageWithFadeTransition(
          context: context,
          state: state,
          begin: fadeTransitionBegin,
          end: fadeTransitionEnd,
          child: const EditUserInfoPage(),
        ),
      ),
      GoRoute(
        path: RoutePaths.showUserInfo,
        name: RouteNames.showUserInfo,
        pageBuilder: (context, state) => buildPageWithFadeTransition(
          context: context,
          state: state,
          begin: fadeTransitionBegin,
          end: fadeTransitionEnd,
          child: const ShowUserInfoPage(),
        ),
      ),
      GoRoute(
        path: RoutePaths.categories,
        name: RouteNames.categories,
        pageBuilder: (context, state) => buildPageWithFadeTransition(
          context: context,
          state: state,
          begin: fadeTransitionBegin,
          end: fadeTransitionEnd,
          child: const CategoriesPage(),
        ),
      ),
      GoRoute(
        path: RoutePaths.changePassword,
        name: RouteNames.changePassword,
        pageBuilder: (context, state) => buildPageWithFadeTransition(
          context: context,
          state: state,
          begin: fadeTransitionBegin,
          end: fadeTransitionEnd,
          child: const PasswordScreen(),
        ),
        routes: <RouteBase>[
          GoRoute(
            path: RoutePaths.updatePassword,
            name: RouteNames.updatePassword,
            pageBuilder: (context, state) => buildPageWithFadeTransition(
              context: context,
              state: state,
              begin: fadeTransitionBegin,
              end: fadeTransitionEnd,
              child: UpdatePasswordScreen(),
            ),
          ),
          // GoRoute(
          //   path: RoutePaths.resetPassword,
          //   name: RouteNames.resetPassword,
          //   pageBuilder: (context, state) => buildPageWithFadeTransition(
          //     context: context,
          //     state: state,
          //     begin: fadeTransitionBegin,
          //     end: fadeTransitionEnd,
          //     child: ResetPasswordPage(),
          //   ),
          // ),
        ],
      ),
      GoRoute(
        path: RoutePaths.createOrUpdateProduct,
        name: RouteNames.createOrUpdateProduct,
        pageBuilder: (context, state) => buildPageWithFadeTransition(
          context: context,
          state: state,
          begin: fadeTransitionBegin,
          end: fadeTransitionEnd,
          child: CreateProductPage(
            arguments: state.extra as CreateProductPageArgument?,
          ),
        ),
      ),
      GoRoute(
        path: RoutePaths.userProducts,
        name: RouteNames.userProducts,
        pageBuilder: (context, state) => buildPageWithFadeTransition(
          context: context,
          state: state,
          begin: fadeTransitionBegin,
          end: fadeTransitionEnd,
          child: const UserProductsPage(),
        ),
      ),
    ];
