import 'package:flutter/widgets.dart';

class PaddingsHelper {
  static double getScrollPadding(BuildContext context) =>
      MediaQuery.of(context).viewInsets.bottom + 270;

  static double getBottomPadding({
    required BuildContext context,

    /// this padding returns if MediaQuery.of(context).padding.bottom == 0
    double paddingIfNoSafeArea = 20,

    /// this bottom padding adds to bottom safe area height if it's small
    double additionalBottomPadding = 10,
  }) =>
      MediaQuery.of(context).padding.bottom == 0
          ? paddingIfNoSafeArea
          : MediaQuery.of(context).padding.bottom < 34
              ? MediaQuery.of(context).padding.bottom + additionalBottomPadding
              : MediaQuery.of(context).padding.bottom;
}
