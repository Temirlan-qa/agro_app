import 'package:agro_app/generated/l10n.dart';
import 'package:agro_app/src/core/widgets/custom_intl_phone_field.dart';
import 'package:agro_app/src/core/widgets/custom_text_field.dart';
import 'package:agro_app/src/features/countries/domain/entities/cities_entity.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/countries.dart';

import '../../../../core/widgets/custom_field_group.dart';
import '../../../../core/widgets/drop_down_widget.dart';

class SignUpIndividualsFields extends StatelessWidget {
  final ValueSetter<String?> onChangeCountryDropDown;
  final String? displayCountryDropDown;
  final List<String> listOfCounties;
  final ValueSetter<Country> onCountryChanged;
  final TextEditingController individualPhoneController;
  final TextEditingController emailController;
  final TextEditingController usernameController;
  final TextEditingController passwordController;
  final TextEditingController fullNameController;
  final TextEditingController socLinkController;

  final ValueSetter<String?> onChangeCitiesDropDown;
  final String? displayCitiesDropDown;
  final List<CitiesEntity> listOfCities;

  const SignUpIndividualsFields({
    super.key,
    required this.onCountryChanged,
    required this.listOfCounties,
    required this.onChangeCountryDropDown,
    required this.displayCountryDropDown,
    required this.individualPhoneController,
    required this.emailController,
    required this.usernameController,
    required this.passwordController,
    required this.fullNameController,
    required this.socLinkController,
    required this.displayCitiesDropDown,
    required this.listOfCities,
    required this.onChangeCitiesDropDown,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomFieldGroup(
          label: S.current.email,
          requiredField: true,
          child: CustomTextField(
            controller: emailController,
            hintText: S.current.email,
            keyboardType: TextInputType.emailAddress,
          ),
        ),
        const SizedBox(height: 8),
        CustomFieldGroup(
          label: S.current.username,
          requiredField: true,
          child: CustomTextField(
            controller: usernameController,
            hintText: S.current.username,
          ),
        ),
        const SizedBox(height: 8),
        CustomFieldGroup(
          label: S.current.password,
          requiredField: true,
          child: CustomTextField(
            controller: passwordController,
            hintText: S.current.password,
          ),
        ),
        const SizedBox(height: 8),
        CustomFieldGroup(
          label: S.current.fullName,
          requiredField: true,
          child: CustomTextField(
            controller: fullNameController,
            hintText: S.current.fullName,
          ),
        ),
        const SizedBox(height: 8),
        CustomFieldGroup(
          label: S.current.phoneNumber,
          requiredField: true,
          child: CustomIntlPhoneField(
            controller: individualPhoneController,
            onCountryChanged: onCountryChanged,
          ),
        ),
        const SizedBox(height: 8),
        CustomFieldGroup(
          label: S.current.socialNetworksForCommunication,
          requiredField: true,
          child: CustomTextField(
            controller: socLinkController,
            hintText: S.current.socialNetworksForCommunication,
          ),
        ),
        const SizedBox(height: 8),
        CustomFieldGroup(
          label: S.current.country,
          requiredField: true,
          child: DropDownWidget(
            value: displayCountryDropDown,
            items: listOfCounties,
            //.map((e) => e.code).toList(),
            onChanged: onChangeCountryDropDown,
          ),
        ),
        const SizedBox(height: 8),
        CustomFieldGroup(
          label: S.current.cityOrRegion,
          requiredField: true,
          child: DropDownWidget(
            value: displayCitiesDropDown,
            items: listOfCities.map((e) => e.name).toList(),
            onChanged: onChangeCitiesDropDown,
          ),
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}
