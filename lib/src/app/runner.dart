import 'package:agro_app/src/core/service/injectable/injectable_service.dart';
import 'package:agro_app/src/core/utils/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';

import 'application.dart';

class Runner {
  Future<void> initializeAndRun({
    required AppFlavor flavor,
    required List<String> args,
  }) async {
    WidgetsFlutterBinding.ensureInitialized();
    await configureDependencies();
    UIHelpers.statusBarTheme();

    MainApp(flavor: flavor).run();
  }
}
