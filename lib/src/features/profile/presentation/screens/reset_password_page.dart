// import 'package:agro_app/src/core/theme/theme.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// import '../../../../../generated/l10n.dart';
// import '../../../../core/widgets/custom_app_bar.dart';
// import '../../../../core/widgets/custom_field_group.dart';
// import '../../../../core/widgets/custom_text_field.dart';
// import '../../domain/entities/user_entity.dart';
// import '../notifier/profile_notifier.dart';
// import '../widgets/button_widget.dart';

// class ResetPasswordPage extends ConsumerWidget {
//   ResetPasswordPage({super.key});

// TextEditingControllers
//   TextEditingController codeEditingController = TextEditingController();
//   TextEditingController newPasswordEditingController = TextEditingController();

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final UserEntity? userData =
//         ref.watch(profileNotifierProvider.select((value) => value.userInfo));
//     ProfileNotifier profileNotifier =
//         ref.read(profileNotifierProvider.notifier);
//     return Scaffold(
//       backgroundColor: context.theme.scaffoldBackground,
//       appBar: CustomAppBar(
//         appBarText: S.current.resetPassword,
//         backgroundColor: context.theme.primary,
//         textStyle: TextStyle(color: context.theme.white, fontSize: 20),
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back_ios, color: context.theme.white),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//       ),
//       body: Container(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Text(
//               S.current.isEmailCorrect,
//               style: TextStyles.h4,
//             ),
//             const SizedBox(height: 8),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Text(
//                   userData?.email ?? '',
//                   style: TextStyles.h5,
//                 ),
//                 const SizedBox(width: 16),
//                 BtnWidget(
//                   onPressed: () {
//                     profileNotifier.resetPassword();
//                   },
//                   width: 100,
//                   textStyle: TextStyle(
//                     fontSize: 16,
//                     color: context.theme.white,
//                   ),
//                   text: S.current.sentEmail,
//                   color: context.theme.primary,
//                 ),
//               ],
//             ),
//             const SizedBox(height: 16),
//             CustomFieldGroup(
//               label: 'code',
//               requiredField: true,
//               child: CustomTextField(
//                 controller: codeEditingController,
//                 hintText: 'code',
//               ),
//             ),
//             const SizedBox(height: 16),
//             CustomFieldGroup(
//               label: S.current.newPassword,
//               requiredField: true,
//               child: CustomTextField(
//                 controller: newPasswordEditingController,
//                 hintText: S.current.newPassword,
//               ),
//             ),
//             const SizedBox(height: 16),
//             BtnWidget(
//               onPressed: () {
//                 profileNotifier.updatePassword(
//                   code: codeEditingController.text,
//                   newPassword: newPasswordEditingController.text,
//                 );
//               },
//               textStyle: TextStyle(
//                 fontSize: 16,
//                 color: context.theme.white,
//               ),
//               text: S.current.updatePassword,
//               color: context.theme.primary,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
