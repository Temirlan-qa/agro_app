import 'dart:ui';

import 'package:agro_app/src/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../../../generated/l10n.dart';

class GlassEffectWithSuccess extends StatelessWidget {
  final bool successChange;
  final String editedThing;
  const GlassEffectWithSuccess(
      {Key? key, required this.successChange, required this.editedThing})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: successChange,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
        child: Container(
          padding: const EdgeInsets.all(16),
          color: Colors.white.withOpacity(0.4),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Lottie.asset(
                repeat: false,
                'assets/images/success.json',
                width: 72,
                height: 72,
                fit: BoxFit.fill,
              ),
              const SizedBox(height: 16),
              DefaultTextStyle(
                style: const TextStyle(),
                child: Text(
                  '${S.current.successfullyChanged} $editedThing',
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  style: TextStyle(
                    color: context.theme.primary,
                    fontSize: 26,
                    height: 1.2,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
