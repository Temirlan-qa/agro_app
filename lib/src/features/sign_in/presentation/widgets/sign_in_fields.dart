import 'package:flutter/material.dart';
import 'package:agro_app/generated/l10n.dart';
import 'package:agro_app/src/core/widgets/custom_text_field.dart';

class SignInFields extends StatelessWidget {
  final TextEditingController usernameController;
  final TextEditingController passwordController;
  const SignInFields({
    super.key,
    required this.usernameController,
    required this.passwordController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
          controller: usernameController,
          hintText: S.of(context).username,
        ),
        const SizedBox(height: 15),
        CustomTextField(
          controller: passwordController,
          obscureText: true,
          hintText: S.of(context).password,
        ),
      ],
    );
  }
}
