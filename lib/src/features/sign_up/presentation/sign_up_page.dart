import 'package:agro_app/generated/l10n.dart';
import 'package:agro_app/src/core/theme/theme.dart';
import 'package:agro_app/src/core/widgets/custom_app_bar.dart';
import 'package:agro_app/src/core/widgets/toggle_switcher_widget.dart';
import 'package:agro_app/src/features/sign_in/presentation/widgets/logo.dart';
import 'package:agro_app/src/features/sign_up/presentation/widgets/sign_up_fields_for_individuals.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/widgets/custom_button.dart';
import '../../countries/domain/entities/cities_entity.dart';
import '../../countries/domain/entities/countries_entity.dart';
import '../../countries/presentation/notifier/countries_notifier.dart';
import '../countries.dart';
import 'notifier/local_switch_notifier.dart';
import 'notifier/sign_up/sign_up_notifier.dart';
import 'widgets/sign_up_fields_for_organization.dart';

class SignUpPage extends ConsumerStatefulWidget {
  const SignUpPage({super.key});

  @override
  ConsumerState<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends ConsumerState<SignUpPage> {
  late final SignUpNotifier _notifier;
  // organization person
  String organizationCountryCode = '';
  final TextEditingController organizationEmailController =
      TextEditingController();
  final TextEditingController organizationBinController =
      TextEditingController();
  final TextEditingController organizationUsernameController =
      TextEditingController();
  final TextEditingController organizationPasswordController =
      TextEditingController();
  final TextEditingController organizationFullNameController =
      TextEditingController();
  final TextEditingController organizationSocLinkController =
      TextEditingController();
  final TextEditingController organizationPhoneController =
      TextEditingController();
  final TextEditingController organizationAddressController =
      TextEditingController();
  //all

  String? country;
  String? city;
  // Individual person
  String individualCountryCode = '';

  final TextEditingController individualEmailController =
      TextEditingController();
  final TextEditingController individualUsernameController =
      TextEditingController();
  final TextEditingController individualPasswordController =
      TextEditingController();
  final TextEditingController individualFullNameController =
      TextEditingController();
  final TextEditingController individualSocLinkController =
      TextEditingController();
  final TextEditingController individualPhoneNumberController =
      TextEditingController();

  @override
  void initState() {
    super.initState();
    _notifier = ref.read(signUpNotifierProvider.notifier);
    _notifier.init(context);
  }

  @override
  void dispose() {
    // organization person
    organizationFullNameController.dispose();
    organizationAddressController.dispose();
    organizationBinController.dispose();
    organizationPhoneController.dispose();
    organizationEmailController.dispose();
    organizationSocLinkController.dispose();
    organizationUsernameController.dispose();
    organizationPasswordController.dispose();
    // Individual person
    individualEmailController.dispose();
    individualUsernameController.dispose();
    individualPasswordController.dispose();
    individualFullNameController.dispose();
    individualSocLinkController.dispose();
    individualPhoneNumberController.dispose();
    super.dispose();
  }

  // List<String> individualsItems = [
  //   S.current.buyer,
  //   S.current.salesman,
  //   S.current.intermediary,
  //   S.current.addServices
  // ];

  // List<String> organizationItems = [
  //   S.current.salesman,
  //   S.current.buyer,
  //   S.current.intermediary,
  //   S.current.addServices
  // ];

  void onSwitch(bool value) {
    ref.read(signUpSwitchProvider.notifier).update((state) => value);
  }

  @override
  Widget build(BuildContext context) {
    List<CountriesEntity> countriesList = ref.watch(
        countryNotifierProvider.select((value) =>
            value.countriesList ??
            [CountriesEntity(code: 'kz', name: S.current.kazakhstan)]));

    List<String> countryListWithLocal = getCountryLocalization(countriesList);

    List<CitiesEntity> citiesList = ref.watch(countryNotifierProvider.select(
        (value) =>
            value.citiesList ??
            [CitiesEntity(code: 'almaty', name: 'Алматы')]));
    bool switchRole = ref.watch(signUpSwitchProvider);
    // String dropDownValue = ref.watch(dropDownProvider);
    // List<CountryCodeEntity> countryCodeList = ref
    //     .watch(signUpNotifierProvider.select((value) => value.countryCodeList));
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        backgroundColor: context.theme.white,
        appBar: CustomAppBar(
          appBarText: S.current.signUp,
          textStyle: TextStyle(
            fontSize: 23,
            color: context.theme.primary,
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: context.theme.primary),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Logo(),
                  const SizedBox(height: 5),
                  Text(
                    S.current.welcomeToGrainMart,
                    textAlign: TextAlign.center,
                    style: context.theme.textStyles.h3,
                  ),
                  const SizedBox(height: 16),
                  CustomToggleSwitcher(
                    textLeft: S.current.userOrganization,
                    textRight: S.current.userIndividual,
                    toggleGroup: [!switchRole, switchRole],
                    onPressed: (int num) {
                      onSwitch(num.isOdd);
                    },
                  ),
                  const SizedBox(height: 16),
                  switchRole
                      ? SignUpIndividualsFields(
                          // Country
                          displayCountryDropDown: country,
                          listOfCounties: countryListWithLocal,
                          onChangeCountryDropDown: (value) {
                            if (country != null || country != value) {
                              ref
                                  .read(countryNotifierProvider.notifier)
                                  .getCitiesByCountry(
                                      code: value!.getCountryCode());
                            }
                            setState(() {
                              city = null;
                              country = value;
                            });
                          },

                          // Cities
                          displayCitiesDropDown: city,
                          listOfCities: citiesList,
                          onChangeCitiesDropDown: (value) {
                            setState(() {
                              city = value;
                            });
                          },
                          //
                          emailController: individualEmailController,
                          usernameController: individualUsernameController,
                          passwordController: individualPasswordController,
                          fullNameController: individualFullNameController,
                          socLinkController: individualSocLinkController,
                          onCountryChanged: (country) {
                            setState(() {
                              individualCountryCode = country.dialCode;
                            });
                          },
                          individualPhoneController:
                              individualPhoneNumberController,
                        )
                      : SignUpOrganizationFields(
                          // Country
                          displayCountryDropDown: country,
                          listOfCounties: countryListWithLocal,
                          onChangeCountryDropDown: (value) {
                            if (country != null || country != value) {
                              ref
                                  .read(countryNotifierProvider.notifier)
                                  .getCitiesByCountry(
                                    code: value!.getCountryCode(),
                                  );
                            }
                            setState(() {
                              city = null;
                              country = value;
                            });
                          },
                          // Cities
                          displayCitiesDropDown: city,
                          listOfCities: citiesList,
                          onChangeCitiesDropDown: (value) {
                            setState(() {
                              city = value;
                            });
                          },
                          organizationCompanyNameController:
                              organizationFullNameController,
                          organizationAddressController:
                              organizationAddressController,
                          organizationBinController: organizationBinController,
                          organizationEmailController:
                              organizationEmailController,
                          organizationSocialController:
                              organizationSocLinkController,
                          organizationUsernameController:
                              organizationUsernameController,
                          organizationPasswordController:
                              organizationPasswordController,
                          onCountryChanged: (country) {
                            setState(() {
                              organizationCountryCode = country.dialCode;
                            });
                          },
                          organizationPhoneController:
                              organizationPhoneController,
                        ),
                  // DropDownWidget(
                  //   items: switchRole ? individualsItems : organizationItems,
                  //   currentText: dropDownValue,
                  //   onChanged: (value) {
                  //     ref
                  //         .read(dropDownProvider.notifier)
                  //         .update((state) => value!);
                  //   },
                  // ),
                  const SizedBox(height: 10),
                  Builder(
                    builder: (context) {
                      final isBtnPressed = ref.watch(signUpNotifierProvider
                          .select((value) => value.isBtnPressed));
                      return CustomButton(
                        disable: isBtnPressed,
                        onTap: () {
                          switchRole
                              ? _notifier.signUpForIndividual(
                                  username: individualUsernameController.text,
                                  password: individualPasswordController.text,
                                  roleType: switchRole,
                                  email: individualEmailController.text,
                                  fio: individualFullNameController.text,
                                  socLink: individualSocLinkController.text,
                                  contactPhone:
                                      '+$individualCountryCode ${individualPhoneNumberController.text}',
                                  country:
                                      country ?? countryListWithLocal.first,
                                  city: city ?? citiesList.first.name,
                                )
                              : _notifier.signUpForOrganization(
                                  username: organizationUsernameController.text,
                                  password: organizationPasswordController.text,
                                  roleType: switchRole,
                                  email: organizationEmailController.text,
                                  bin: organizationBinController.text,
                                  fio: organizationFullNameController.text,
                                  socLink: organizationSocLinkController.text,
                                  contactPhone:
                                      "+$organizationCountryCode ${organizationPhoneController.text}",
                                  city: city ?? citiesList.first.name,
                                  country:
                                      country ?? countryListWithLocal.first,
                                  address: organizationAddressController.text,
                                );
                        },
                        title: S.current.signUp,
                      );
                    },
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
