import 'package:agro_app/generated/l10n.dart';
import 'package:agro_app/src/core/theme/theme.dart';
import 'package:agro_app/src/features/profile/presentation/widgets/button_widget.dart';
import 'package:agro_app/src/features/profile/presentation/widgets/info_list_tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/router/router_provider.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../notifier/profile_notifier.dart';

class ProfilePage extends ConsumerStatefulWidget {
  const ProfilePage({super.key});

  @override
  ConsumerState<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends ConsumerState<ProfilePage> {
  late ProfileNotifier _profileNotifier;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _profileNotifier = ref.read(profileNotifierProvider.notifier);
      _profileNotifier.init(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    final isBtnPressed = ref
        .watch(profileNotifierProvider.select((value) => value.isBtnPressed));

    final userData =
        ref.watch(profileNotifierProvider.select((value) => value.userInfo));
    return Scaffold(
      backgroundColor: context.theme.scaffoldBackground,
      appBar: CustomAppBar(
        appBarText: S.current.profilePage,
        backgroundColor: context.theme.primary,
        textStyle: context.theme.textStyles.h1,
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () => context.pushNamed(RouteNames.settings),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: context.theme.primary,
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.person,
                        size: 56,
                        weight: 56,
                        color: context.theme.white,
                      ),
                      const SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            userData?.username ?? '',
                            style: TextStyle(
                              fontSize: 20,
                              color: context.theme.white,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            userData?.email ?? '',
                            style: TextStyle(
                              fontSize: 16,
                              color: context.theme.white,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Icon(
                        Icons.chevron_right_outlined,
                        size: 24,
                        color: context.theme.white,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24),
              InfoListTileWidget(
                text: S.of(context).createdAds,
                icon: Icon(
                  Icons.view_list_sharp,
                  size: 24,
                  color: context.theme.primary,
                ),
                onTap: () => context.pushNamed(RouteNames.userProducts),
              ),
              const SizedBox(height: 8),
              InfoListTileWidget(
                text: S.current.aboutProject,
                icon: Image.asset(
                  'assets/images/logo.jpeg',
                  width: 20,
                  height: 20,
                ),
                onTap: () => context.pushNamed(RouteNames.aboutProject),
              ),
              const SizedBox(height: 8),
              InfoListTileWidget(
                text: S.current.writeReview,
                svgPath: 'assets/images/feedback_for_profile.svg',
                iconColor: context.theme.primary,
                onTap: () => context.pushNamed(RouteNames.aboutApp),
              ),
              const SizedBox(height: 8),
              InfoListTileWidget(
                text: S.current.aboutApp,
                svgPath: 'assets/images/about_for_profile.svg',
                iconColor: context.theme.primary,
                onTap: () => context.pushNamed(RouteNames.aboutApp),
              ),
              const SizedBox(height: 16),
              BtnWidget(
                color: null,
                onPressed: () {
                  _profileNotifier.logOut();
                },
                text: S.current.exit,
                textStyle:
                    TextStyle(color: context.theme.primary, fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
