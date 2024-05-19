import 'package:flutter/material.dart';
import 'package:agro_app/generated/l10n.dart';
import 'package:agro_app/src/core/theme/theme.dart';

import '../../../core/widgets/custom_app_bar.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBarText: S.current.chat,
        backgroundColor: context.theme.primary,
        textStyle: context.theme.textStyles.h1,
        centerTitle: false,
      ),
      backgroundColor: context.theme.scaffoldBackground,
      body: Center(
        child: Text(S.of(context).chatPage),
      ),
    );
  }
}
