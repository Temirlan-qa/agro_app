import 'dart:async';

import 'package:agro_app/src/app/runner.dart';
import 'package:flutter/foundation.dart';
import 'package:agro_app/src/app/application.dart';
import 'package:agro_app/src/core/utils/loggers/logger.dart';

Future<void> main(List<String> args) async {
  FlutterError.onError = Log.logFlutterError;
  // there could be some shared initialization here
  Log.runLogging(() {
    runZonedGuarded(
      () async {
        await Runner().initializeAndRun(
          flavor: AppFlavor.development,
          args: args,
        );
      },
      Log.logZoneError,
    );
  });
}
