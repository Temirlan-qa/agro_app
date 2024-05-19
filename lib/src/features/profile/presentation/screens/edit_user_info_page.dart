import 'package:agro_app/src/core/theme/theme.dart';
import 'package:agro_app/src/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_picker_platform_interface/image_picker_platform_interface.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../core/widgets/custom_field_group.dart';
import '../../../../core/widgets/custom_intl_phone_field.dart';
import '../notifier/profile_notifier.dart';
import '../widgets/button_widget.dart';

class EditUserInfoPage extends ConsumerStatefulWidget {
  const EditUserInfoPage({super.key});

  @override
  ConsumerState<EditUserInfoPage> createState() => _EditUserInfoPageState();
}

class _EditUserInfoPageState extends ConsumerState<EditUserInfoPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController fullNameController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  String countryCode = '7';

  String avatarId = '';
  bool nameIsEmpty = true;
  XFile? profilePic;
  String editedThing = S.current.email;
  void refreshState(XFile image, String id) {
    setState(() {
      avatarId = id;
      profilePic = image;
    });
  }

  @override
  void dispose() {
    emailController.dispose();
    phoneController.dispose();
    fullNameController.dispose();
    cityController.dispose();
    super.dispose();
  }

  // final picker = ImagePicker();
  // final ImagePickerPlatform _picker = ImagePickerPlatform.instance;
  // XFile? _imageFileList;
  // bool addImg = false;
  // chooseImage(ImageSource source, notifyParent) async {
  //   try {
  //     final XFile? pickedFileList = await _picker.getImage(source: source);
  //     _imageFileList = pickedFileList;
  //     setState(() {
  //       addImg != addImg;
  //     });
  //   } catch (e) {}
  // }

  @override
  Widget build(BuildContext context) {
    final userData =
        ref.watch(profileNotifierProvider.select((value) => value.userInfo));

    emailController.text = userData?.email ?? '';
    phoneController.text = userData?.contactPhone != null
        ? userData!.contactPhone!.split('+').last.split(' ').last
        : '';
    fullNameController.text = userData?.fio ?? '';
    cityController.text = userData?.city ?? '';
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
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     AvatarPickerWidget(
            //       onAvatarTap: () {
            //         setState(() {
            //           addImg = true;
            //         });
            //       },
            //     ),
            //   ],
            // ),
            //const SizedBox(height: 32),
            const Divider(thickness: 2),
            const SizedBox(height: 16),
            CustomFieldGroup(
              label: S.current.eMail,
              child: CustomTextField(
                controller: emailController,
                hintText: S.current.eMail,
              ),
            ),
            const SizedBox(height: 16),
            CustomFieldGroup(
              label: S.current.phoneNumber,
              child: CustomIntlPhoneField(
                controller: phoneController,
                onCountryChanged: (country) {
                  setState(() {
                    countryCode = country.dialCode;
                  });
                },
              ),
            ),
            const SizedBox(height: 16),
            CustomFieldGroup(
              label: S.current.fullName,
              child: CustomTextField(
                controller: fullNameController,
                hintText: S.current.fullName,
              ),
            ),
            const SizedBox(height: 16),
            CustomFieldGroup(
              label: S.current.cityOrRegion,
              child: CustomTextField(
                controller: cityController,
                hintText: S.current.cityOrRegion,
              ),
            ),
            const SizedBox(height: 16),
            BtnWidget(
              onPressed: () {
                ref.read(profileNotifierProvider.notifier).updateUserInfo(
                      emailController.text,
                      '+$countryCode ${phoneController.text}',
                      fullNameController.text,
                      cityController.text,
                    );
              },
              textStyle: TextStyle(
                fontSize: 16,
                color: context.theme.white,
              ),
              text: S.current.ready,
              color: context.theme.primary,
            ),
          ],
        ),
      ),
    );
  }
}




// SelectImageSourceWidget(
        //   addImg: addImg,
        //   imageFileList: _imageFileList,
        //   onGallerySourceTap: () {
        //     chooseImage(
        //       ImageSource.gallery,
        //       refreshState,
        //     );
        //   },
        //   onCameraSourceTap: () {
        //     chooseImage(
        //       ImageSource.camera,
        //       refreshState,
        //     );
        //     Navigator.pop(context, true);
        //   },
        //   onCancel: () {
        //     Navigator.of(context).pop();
        //   },
        // ),