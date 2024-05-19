part of 'router_provider.dart';

CustomTransitionPage buildPageWithDefaultTransition<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        FadeTransition(opacity: animation, child: child),
  );
}

CustomTransitionPage buildPageWithFadeTransition<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
  required double begin,
  required double end,
  bool useUniqueKey = false,
}) {
  return CustomTransitionPage<T>(
    key: useUniqueKey ? UniqueKey() : state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        FadeTransition(
      opacity: Tween<double>(begin: begin, end: end).animate(animation),
      child: child,
    ),
  );
}

CustomTransitionPage buildPageWithLongFadeTransition<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
  required double begin,
  required double end,
}) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    transitionDuration: const Duration(milliseconds: 700),
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        FadeTransition(
      opacity: Tween<double>(begin: begin, end: end).animate(animation),
      child: child,
    ),
  );
}

CustomTransitionPage buildPageWithSlideTransition<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
  required Offset begin,
  required Offset end,
}) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        SlideTransition(
      position: Tween<Offset>(begin: begin, end: end).animate(animation),
      child: child,
    ),
  );
}

CustomTransitionPage buildPageWithScaleTransition<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
  required double begin,
  required double end,
}) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        ScaleTransition(
      scale: Tween<double>(begin: begin, end: end).animate(animation),
      child: child,
    ),
  );
}

CustomTransitionPage buildPageWithRotationTransition<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
  required double begin,
  required double end,
}) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        RotationTransition(
      turns: Tween<double>(begin: begin, end: end).animate(animation),
      child: child,
    ),
  );
}

CustomTransitionPage buildPageWithSizeTransition<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
  required Axis axis,
}) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        SizeTransition(
      sizeFactor: animation,
      axis: axis,
      child: child,
    ),
  );
}

CustomTransitionPage buildPageWithSlideTransitionAndFadeTransition<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
  required Offset begin,
  required Offset end,
}) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        FadeTransition(
      opacity: animation,
      child: SlideTransition(
        position: Tween<Offset>(begin: begin, end: end).animate(animation),
        child: child,
      ),
    ),
  );
}

CustomTransitionPage buildPageWithScaleTransitionAndFadeTransition<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
  required double begin,
  required double end,
}) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        FadeTransition(
      opacity: animation,
      child: ScaleTransition(
        scale: Tween<double>(begin: begin, end: end).animate(animation),
        child: child,
      ),
    ),
  );
}
