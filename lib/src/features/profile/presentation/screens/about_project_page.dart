import 'package:agro_app/src/core/theme/theme.dart';
import 'package:agro_app/src/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../../../../../generated/l10n.dart';
import '../widgets/button_widget.dart';

class AboutProjectPage extends StatelessWidget {
  const AboutProjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.scaffoldBackground,
      appBar: CustomAppBar(
        appBarText: S.current.aboutProject,
        backgroundColor: context.theme.primary,
        textStyle: TextStyle(color: context.theme.white, fontSize: 20),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: context.theme.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                '«НАЗВАНИЕ»- поддержка цифровизации аграрной сферы СНГ, услуг для малых и средних предприятий (МСП)',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 23,
                  color: context.theme.black,
                ),
              ),
            ),
            const SizedBox(height: 90),
            BtnWidget(
              color: context.theme.primary,
              onPressed: () {
                Navigator.pop(context);
              },
              textStyle: TextStyle(
                fontSize: 16,
                color: context.theme.white,
              ),
              text: S.current.back,
            ),
          ],
        ),
      ),
    );
  }
}
