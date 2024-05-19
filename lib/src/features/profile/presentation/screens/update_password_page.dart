import 'package:agro_app/src/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../core/widgets/custom_field_group.dart';
import '../../../../core/widgets/custom_text_field.dart';
import '../notifier/profile_notifier.dart';
import '../widgets/button_widget.dart';

class UpdatePasswordScreen extends StatelessWidget {
  UpdatePasswordScreen({Key? key}) : super(key: key);
  // TextEditingControllers
  TextEditingController currentPasswordEditingController =
      TextEditingController();
  TextEditingController newPasswordEditingController = TextEditingController();
  TextEditingController newConfirmPasswordEditingController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.scaffoldBackground,
      appBar: CustomAppBar(
        appBarText: S.current.updatePassword,
        backgroundColor: context.theme.primary,
        textStyle: TextStyle(color: context.theme.white, fontSize: 20),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: context.theme.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            CustomFieldGroup(
              label: S.current.currentPassword,
              requiredField: true,
              child: CustomTextField(
                controller: currentPasswordEditingController,
                hintText: S.current.currentPassword,
              ),
            ),
            const SizedBox(height: 16),
            CustomFieldGroup(
              label: S.current.newPassword,
              requiredField: true,
              child: CustomTextField(
                controller: newPasswordEditingController,
                hintText: S.current.newPassword,
              ),
            ),
            const SizedBox(height: 16),
            CustomFieldGroup(
              label: S.current.repeatNewPassword,
              requiredField: true,
              child: CustomTextField(
                controller: newConfirmPasswordEditingController,
                hintText: S.current.repeatNewPassword,
              ),
            ),
            const SizedBox(height: 16),
            Consumer(
              builder: (context, ref, child) {
                return BtnWidget(
                  color: context.theme.primary,
                  onPressed: () {
                    ProfileNotifier profileNotifier =
                        ref.read(profileNotifierProvider.notifier);

                    profileNotifier.updatePassword(
                      oldPassword: currentPasswordEditingController.text,
                      newPassword: newPasswordEditingController.text,
                      confirmNewPassword:
                          newConfirmPasswordEditingController.text,
                    );
                  },
                  textStyle: TextStyle(
                    fontSize: 16,
                    color: context.theme.white,
                  ),
                  text: S.current.ready,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
