import 'package:agro_app/src/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../domain/entities/user_entity.dart';
import '../notifier/profile_notifier.dart';
import '../widgets/divider_widget.dart';

class ShowUserInfoPage extends ConsumerWidget {
  const ShowUserInfoPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final UserEntity? userData =
        ref.watch(profileNotifierProvider.select((value) => value.userInfo));
    return Scaffold(
      backgroundColor: context.theme.scaffoldBackground,
      appBar: CustomAppBar(
        backgroundColor: context.theme.primary,
        textStyle: TextStyle(color: context.theme.white, fontSize: 20),
        appBarText: S.current.personalInfo,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: context.theme.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${S.current.username}: ${userData?.username ?? ''} ',
              style: TextStyles.h5,
            ),
            const DividerWidget(),
            Text(
              '${S.current.email}: ${userData?.email ?? ''} ',
              style: TextStyles.h5,
            ),
            const DividerWidget(),
            Text(
              '${S.current.fullName}: ${userData?.fio ?? ''} ',
              style: TextStyles.h5,
            ),
            const DividerWidget(),
            Text(
              '${S.current.socialNetworksForCommunication}: ${userData?.socLink ?? ''} ',
              style: TextStyles.h5,
            ),
            const DividerWidget(),
            Text(
              '${S.current.phoneNumber}: ${userData?.contactPhone ?? ''} ',
              style: TextStyles.h5,
            ),
            const DividerWidget(),
            Visibility(
              visible: userData?.address != null,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${S.current.address}: ${userData?.address} ',
                    style: TextStyles.h5,
                  ),
                  Divider(
                    thickness: 1.2,
                    color: context.theme.grey,
                  ),
                ],
              ),
            ),
            Text(
              '${S.current.cityOrRegion}: ${userData?.city ?? ''} ',
              style: TextStyles.h5,
            ),
            const DividerWidget(),
            Text(
              '${S.current.country}: ${userData?.country ?? ''} ',
              style: TextStyles.h5,
            ),
            const DividerWidget(),
            Visibility(
              visible: userData?.bin != null ||
                  userData?.roleType.toUpperCase() == 'ORGANIZATION',
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${S.current.bin}: ${userData?.bin ?? ''} ',
                    style: TextStyles.h5,
                  ),
                  const DividerWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
