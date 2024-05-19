import 'package:agro_app/src/core/theme/theme.dart';
import 'package:agro_app/src/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/router/router_provider.dart';
import '../../domain/entities/user_entity.dart';
import '../notifier/profile_notifier.dart';
import '../widgets/info_list_tile_widget.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // final UserEntity? userData =
    //     ref.watch(profileNotifierProvider.select((value) => value.userInfo));
    return Scaffold(
      appBar: CustomAppBar(
        appBarText: S.current.settings,
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
            // Container(
            //   decoration: BoxDecoration(
            //     shape: BoxShape.circle,
            //     color: context.theme.grey,
            //   ),
            //   child: Icon(
            //     Icons.person,
            //     size: 80,
            //     weight: 80,
            //     color: context.theme.white,
            //   ),
            // ),
            //const SizedBox(height: 16),
            Consumer(builder: (context, ref, child) {
              final UserEntity? userData = ref.watch(
                  profileNotifierProvider.select((value) => value.userInfo));
              return Column(
                children: [
                  Text(
                    userData?.username ?? S.current.username,
                    style: TextStyle(fontSize: 20, color: context.theme.black),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    userData?.country ?? S.current.country,
                    style: TextStyle(fontSize: 20, color: context.theme.black),
                  ),
                ],
              );
            }),

            const SizedBox(height: 16),
            InfoListTileWidget(
              text: S.current.personalData,
              svgPath: 'assets/images/user_for_profile.svg',
              onTap: () => context.pushNamed(RouteNames.showUserInfo),
              iconColor: context.theme.primary,
            ),
            const SizedBox(height: 16),
            InfoListTileWidget(
              text: S.current.editPersonalData,
              svgPath: 'assets/images/user_for_profile.svg',
              onTap: () => context.pushNamed(RouteNames.editUserInfo),
              iconColor: context.theme.primary,
            ),
            const SizedBox(height: 16),
            InfoListTileWidget(
              text: S.current.changePassword,
              svgPath: 'assets/images/key_for_profile.svg',
              onTap: () => context.pushNamed(RouteNames.updatePassword),
              iconColor: context.theme.primary,
            ),
          ],
        ),
      ),
    );
  }
}
