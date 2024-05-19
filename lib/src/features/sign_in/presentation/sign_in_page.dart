import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:agro_app/generated/l10n.dart';
import 'package:agro_app/src/core/router/router_provider.dart';
import 'package:agro_app/src/core/theme/theme.dart';
import 'package:agro_app/src/core/widgets/custom_button.dart';

import 'notifier/sign_in_notifier.dart';
import 'widgets/logo.dart';
import 'widgets/sign_in_fields.dart';

class SignInPage extends ConsumerStatefulWidget {
  const SignInPage({super.key});

  @override
  ConsumerState<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends ConsumerState<SignInPage> {
  late final SignInNotifier _notifier;
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _notifier = ref.read(signInNotifierProvider.notifier);
      _notifier.init(context);
    });
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        backgroundColor: context.theme.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 16),
                  const Logo(),
                  const SizedBox(height: 16),
                  Text(
                    S.of(context).welcomeToGrainMart,
                    textAlign: TextAlign.center,
                    style: context.theme.textStyles.h3,
                  ),
                  const SizedBox(height: 25),
                  SignInFields(
                    usernameController: _usernameController,
                    passwordController: _passwordController,
                  ),
                  const SizedBox(height: 20),
                  Builder(
                    builder: (context) {
                      final isBtnPressed = ref.watch(signInNotifierProvider
                          .select((value) => value.isBtnPressed));
                      return CustomButton(
                        disable: isBtnPressed,
                        onTap: () {
                          _notifier.signInForOrganization(
                            username: _usernameController.text,
                            password: _passwordController.text,
                          );
                        },
                        title: S.of(context).signIn,
                      );
                    },
                  ),
                  const SizedBox(height: 15),
                  // blue link text to sign up page
                  GestureDetector(
                    onTap: () => context.pushNamed(RouteNames.signUp),
                    child: Text(
                      S.of(context).signInPageSignUpButton,
                      style: context.theme.textStyles.regular.copyWith(
                        color: context.theme.primaryColor,
                      ),
                    ),
                  ),
                  const SizedBox(height: 45),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
