import 'package:agro_app/generated/l10n.dart';
import 'package:agro_app/src/core/widgets/custom_intl_phone_field.dart';
import 'package:agro_app/src/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/countries.dart';

import '../../../../core/widgets/custom_field_group.dart';
import '../../../../core/widgets/drop_down_widget.dart';
import '../../../countries/domain/entities/cities_entity.dart';

class SignUpOrganizationFields extends StatelessWidget {
  final TextEditingController organizationCompanyNameController;
  final TextEditingController organizationAddressController;
  final TextEditingController organizationBinController;
  final TextEditingController organizationPhoneController;
  final ValueSetter<Country> onCountryChanged;
  final String? displayCountryDropDown;
  final List<String> listOfCounties;
  final ValueSetter<String?> onChangeCountryDropDown;
  final TextEditingController organizationEmailController;
  final TextEditingController organizationSocialController;
  final TextEditingController organizationUsernameController;
  final TextEditingController organizationPasswordController;

  final ValueSetter<String?> onChangeCitiesDropDown;
  final String? displayCitiesDropDown;
  final List<CitiesEntity> listOfCities;

  const SignUpOrganizationFields({
    super.key,
    required this.organizationCompanyNameController,
    required this.organizationAddressController,
    required this.organizationBinController,
    required this.organizationPhoneController,
    required this.onCountryChanged,
    required this.onChangeCountryDropDown,
    required this.organizationEmailController,
    required this.organizationUsernameController,
    required this.organizationSocialController,
    required this.organizationPasswordController,
    required this.displayCountryDropDown,
    required this.listOfCounties,
    required this.onChangeCitiesDropDown,
    this.displayCitiesDropDown,
    required this.listOfCities,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomFieldGroup(
          label: S.current.companyName,
          requiredField: true,
          child: CustomTextField(
            controller: organizationCompanyNameController,
            hintText: S.current.companyName,
          ),
        ),
        const SizedBox(height: 8),
        CustomFieldGroup(
          label: S.current.organizationAddress,
          requiredField: true,
          child: CustomTextField(
              controller: organizationAddressController,
              hintText: S.current.organizationAddress),
        ),
        const SizedBox(height: 8),
        CustomFieldGroup(
          label: S.current.bin,
          requiredField: true,
          child: CustomTextField(
            controller: organizationBinController,
            hintText: S.current.bin,
          ),
        ),
        const SizedBox(height: 8),
        CustomFieldGroup(
          label: S.current.phoneNumber,
          requiredField: true,
          child: CustomIntlPhoneField(
            controller: organizationPhoneController,
            onCountryChanged: onCountryChanged,
          ),
        ),
        if (listOfCounties.isNotEmpty) ...[
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
        ],
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
        CustomFieldGroup(
          label: S.current.companyEmail,
          requiredField: false,
          child: CustomTextField(
            controller: organizationEmailController,
            hintText: S.current.companyEmail,
            keyboardType: TextInputType.emailAddress,
          ),
        ),
        const SizedBox(height: 8),
        CustomFieldGroup(
          label: S.current.socialNetworksForCommunication,
          requiredField: false,
          child: CustomTextField(
            controller: organizationSocialController,
            hintText: S.current.socialNetworksForCommunication,
            keyboardType: TextInputType.emailAddress,
          ),
        ),
        const SizedBox(height: 8),
        CustomFieldGroup(
          label: S.current.username,
          requiredField: true,
          child: CustomTextField(
            controller: organizationUsernameController,
            hintText: S.current.username,
          ),
        ),
        const SizedBox(height: 8),
        CustomFieldGroup(
          label: S.current.password,
          requiredField: true,
          child: CustomTextField(
            controller: organizationPasswordController,
            hintText: S.current.password,
          ),
        ),
      ],
    );
  }
}
