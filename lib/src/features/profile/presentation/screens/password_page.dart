import 'package:agro_app/src/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/router/router_provider.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../widgets/info_list_tile_widget.dart';

class PasswordScreen extends StatelessWidget {
  const PasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBarText: S.current.password,
        backgroundColor: context.theme.primary,
        textStyle: TextStyle(color: context.theme.white, fontSize: 20),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: context.theme.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: context.theme.scaffoldBackground,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(height: 16),
            InfoListTileWidget(
              text: S.current.updatePassword,
              svgPath: 'assets/images/key_for_profile.svg',
              onTap: () => context.pushNamed(RouteNames.updatePassword),
              iconColor: context.theme.primary,
            ),
            const SizedBox(height: 16),
            InfoListTileWidget(
              text: S.current.resetPassword,
              svgPath: 'assets/images/key_for_profile.svg',
              onTap: () => context.pushNamed(RouteNames.resetPassword),
              iconColor: context.theme.primary,
            ),
          ],
        ),
      ),
    );
  }
}
