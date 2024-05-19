// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `About Application`
  String get aboutApp {
    return Intl.message(
      'About Application',
      name: 'aboutApp',
      desc: '',
      args: [],
    );
  }

  /// `About Project`
  String get aboutProject {
    return Intl.message(
      'About Project',
      name: 'aboutProject',
      desc: '',
      args: [],
    );
  }

  /// `Add image`
  String get addImage {
    return Intl.message(
      'Add image',
      name: 'addImage',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get address {
    return Intl.message(
      'Address',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `additional services`
  String get addServices {
    return Intl.message(
      'additional services',
      name: 'addServices',
      desc: '',
      args: [],
    );
  }

  /// `Add to bag`
  String get addToBag {
    return Intl.message(
      'Add to bag',
      name: 'addToBag',
      desc: '',
      args: [],
    );
  }

  /// `Age`
  String get age {
    return Intl.message(
      'Age',
      name: 'age',
      desc: '',
      args: [],
    );
  }

  /// `An internet connection is required`
  String get anInternetConnectionIsRequired {
    return Intl.message(
      'An internet connection is required',
      name: 'anInternetConnectionIsRequired',
      desc: '',
      args: [],
    );
  }

  /// `Any`
  String get any {
    return Intl.message(
      'Any',
      name: 'any',
      desc: '',
      args: [],
    );
  }

  /// `Sign in to your account`
  String get authRequiredPopupButtonTitle {
    return Intl.message(
      'Sign in to your account',
      name: 'authRequiredPopupButtonTitle',
      desc: '',
      args: [],
    );
  }

  /// `If you want to use this feature, you need to sign in to your account`
  String get authRequiredPopupDescription {
    return Intl.message(
      'If you want to use this feature, you need to sign in to your account',
      name: 'authRequiredPopupDescription',
      desc: '',
      args: [],
    );
  }

  /// `Sign in to your account`
  String get authRequiredPopupTitle {
    return Intl.message(
      'Sign in to your account',
      name: 'authRequiredPopupTitle',
      desc: '',
      args: [],
    );
  }

  /// `Back to main page`
  String get back {
    return Intl.message(
      'Back to main page',
      name: 'back',
      desc: '',
      args: [],
    );
  }

  /// `Bad gateway`
  String get badGateway {
    return Intl.message(
      'Bad gateway',
      name: 'badGateway',
      desc: '',
      args: [],
    );
  }

  /// `Bad request`
  String get badRequest {
    return Intl.message(
      'Bad request',
      name: 'badRequest',
      desc: '',
      args: [],
    );
  }

  /// `BIN`
  String get bin {
    return Intl.message(
      'BIN',
      name: 'bin',
      desc: '',
      args: [],
    );
  }

  /// `Buy`
  String get buy {
    return Intl.message(
      'Buy',
      name: 'buy',
      desc: '',
      args: [],
    );
  }

  /// `buyer`
  String get buyer {
    return Intl.message(
      'buyer',
      name: 'buyer',
      desc: '',
      args: [],
    );
  }

  /// `You have entered a blank username or password`
  String get emptyFieldsInSignIn {
    return Intl.message(
      'You have entered a blank username or password',
      name: 'emptyFieldsInSignIn',
      desc: '',
      args: [],
    );
  }

  /// `You filled in the information incorrectly, check again`
  String get incorrectInfo {
    return Intl.message(
      'You filled in the information incorrectly, check again',
      name: 'incorrectInfo',
      desc: '',
      args: [],
    );
  }

  /// `Kazakhstan`
  String get kazakhstan {
    return Intl.message(
      'Kazakhstan',
      name: 'kazakhstan',
      desc: '',
      args: [],
    );
  }

  /// `USA`
  String get usa {
    return Intl.message(
      'USA',
      name: 'usa',
      desc: '',
      args: [],
    );
  }

  /// `Canada`
  String get canada {
    return Intl.message(
      'Canada',
      name: 'canada',
      desc: '',
      args: [],
    );
  }

  /// `UK`
  String get uk {
    return Intl.message(
      'UK',
      name: 'uk',
      desc: '',
      args: [],
    );
  }

  /// `Germany`
  String get germany {
    return Intl.message(
      'Germany',
      name: 'germany',
      desc: '',
      args: [],
    );
  }

  /// `France`
  String get france {
    return Intl.message(
      'France',
      name: 'france',
      desc: '',
      args: [],
    );
  }

  /// `Australia`
  String get australia {
    return Intl.message(
      'Australia',
      name: 'australia',
      desc: '',
      args: [],
    );
  }

  /// `Japan`
  String get japan {
    return Intl.message(
      'Japan',
      name: 'japan',
      desc: '',
      args: [],
    );
  }

  /// `China`
  String get china {
    return Intl.message(
      'China',
      name: 'china',
      desc: '',
      args: [],
    );
  }

  /// `India`
  String get india {
    return Intl.message(
      'India',
      name: 'india',
      desc: '',
      args: [],
    );
  }

  /// `Uzbekistan`
  String get uzbekistan {
    return Intl.message(
      'Uzbekistan',
      name: 'uzbekistan',
      desc: '',
      args: [],
    );
  }

  /// `Russia`
  String get russia {
    return Intl.message(
      'Russia',
      name: 'russia',
      desc: '',
      args: [],
    );
  }

  /// `Belarus`
  String get belarus {
    return Intl.message(
      'Belarus',
      name: 'belarus',
      desc: '',
      args: [],
    );
  }

  /// `Azerbaijan`
  String get azerbaijan {
    return Intl.message(
      'Azerbaijan',
      name: 'azerbaijan',
      desc: '',
      args: [],
    );
  }

  /// `Armenia`
  String get armenia {
    return Intl.message(
      'Armenia',
      name: 'armenia',
      desc: '',
      args: [],
    );
  }

  /// `Kyrgyzstan`
  String get kyrgyzstan {
    return Intl.message(
      'Kyrgyzstan',
      name: 'kyrgyzstan',
      desc: '',
      args: [],
    );
  }

  /// `Moldova`
  String get moldova {
    return Intl.message(
      'Moldova',
      name: 'moldova',
      desc: '',
      args: [],
    );
  }

  /// `Tajikistan`
  String get tajikistan {
    return Intl.message(
      'Tajikistan',
      name: 'tajikistan',
      desc: '',
      args: [],
    );
  }

  /// `Turkmenistan`
  String get turkmenistan {
    return Intl.message(
      'Turkmenistan',
      name: 'turkmenistan',
      desc: '',
      args: [],
    );
  }

  /// `Ukraine`
  String get ukraine {
    return Intl.message(
      'Ukraine',
      name: 'ukraine',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Request to API server was cancelled`
  String get cancelRequest {
    return Intl.message(
      'Request to API server was cancelled',
      name: 'cancelRequest',
      desc: '',
      args: [],
    );
  }

  /// `Change image`
  String get changeImage {
    return Intl.message(
      'Change image',
      name: 'changeImage',
      desc: '',
      args: [],
    );
  }

  /// `Change Password`
  String get changePassword {
    return Intl.message(
      'Change Password',
      name: 'changePassword',
      desc: '',
      args: [],
    );
  }

  /// `Reset Password`
  String get resetPassword {
    return Intl.message(
      'Reset Password',
      name: 'resetPassword',
      desc: '',
      args: [],
    );
  }

  /// `Update Password`
  String get updatePassword {
    return Intl.message(
      'Update Password',
      name: 'updatePassword',
      desc: '',
      args: [],
    );
  }

  /// `Password reset email sent`
  String get passwordResetEmailSent {
    return Intl.message(
      'Password reset email sent',
      name: 'passwordResetEmailSent',
      desc: '',
      args: [],
    );
  }

  /// `Make sure your email is correct`
  String get isEmailCorrect {
    return Intl.message(
      'Make sure your email is correct',
      name: 'isEmailCorrect',
      desc: '',
      args: [],
    );
  }

  /// `sent Email`
  String get sentEmail {
    return Intl.message(
      'sent Email',
      name: 'sentEmail',
      desc: '',
      args: [],
    );
  }

  /// `Chat`
  String get chat {
    return Intl.message(
      'Chat',
      name: 'chat',
      desc: '',
      args: [],
    );
  }

  /// `Chat Page`
  String get chatPage {
    return Intl.message(
      'Chat Page',
      name: 'chatPage',
      desc: '',
      args: [],
    );
  }

  /// `Choose a city`
  String get chooseCity {
    return Intl.message(
      'Choose a city',
      name: 'chooseCity',
      desc: '',
      args: [],
    );
  }

  /// `City/Region`
  String get cityOrRegion {
    return Intl.message(
      'City/Region',
      name: 'cityOrRegion',
      desc: '',
      args: [],
    );
  }

  /// `Company email`
  String get companyEmail {
    return Intl.message(
      'Company email',
      name: 'companyEmail',
      desc: '',
      args: [],
    );
  }

  /// `Company name`
  String get companyName {
    return Intl.message(
      'Company name',
      name: 'companyName',
      desc: '',
      args: [],
    );
  }

  /// `Congratulations!`
  String get congratulations {
    return Intl.message(
      'Congratulations!',
      name: 'congratulations',
      desc: '',
      args: [],
    );
  }

  /// `Connect`
  String get connect {
    return Intl.message(
      'Connect',
      name: 'connect',
      desc: '',
      args: [],
    );
  }

  /// `Connection timeout with API server`
  String get connectionTimeout {
    return Intl.message(
      'Connection timeout with API server',
      name: 'connectionTimeout',
      desc: '',
      args: [],
    );
  }

  /// `Country`
  String get country {
    return Intl.message(
      'Country',
      name: 'country',
      desc: '',
      args: [],
    );
  }

  /// `Create product`
  String get createProduct {
    return Intl.message(
      'Create product',
      name: 'createProduct',
      desc: '',
      args: [],
    );
  }

  /// `Criteria`
  String get criteria {
    return Intl.message(
      'Criteria',
      name: 'criteria',
      desc: '',
      args: [],
    );
  }

  /// `Current Password`
  String get currentPassword {
    return Intl.message(
      'Current Password',
      name: 'currentPassword',
      desc: '',
      args: [],
    );
  }

  /// `Deadline date`
  String get deadlineDate {
    return Intl.message(
      'Deadline date',
      name: 'deadlineDate',
      desc: '',
      args: [],
    );
  }

  /// `Deal type`
  String get dealType {
    return Intl.message(
      'Deal type',
      name: 'dealType',
      desc: '',
      args: [],
    );
  }

  /// `Delete image`
  String get deleteImage {
    return Intl.message(
      'Delete image',
      name: 'deleteImage',
      desc: '',
      args: [],
    );
  }

  /// `Duties`
  String get duties {
    return Intl.message(
      'Duties',
      name: 'duties',
      desc: '',
      args: [],
    );
  }

  /// `Edit Personal Data`
  String get editPersonalData {
    return Intl.message(
      'Edit Personal Data',
      name: 'editPersonalData',
      desc: '',
      args: [],
    );
  }

  /// `E-mail`
  String get eMail {
    return Intl.message(
      'E-mail',
      name: 'eMail',
      desc: '',
      args: [],
    );
  }

  /// `email`
  String get email {
    return Intl.message(
      'email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Error during registration`
  String get errorDuringRegistration {
    return Intl.message(
      'Error during registration',
      name: 'errorDuringRegistration',
      desc: '',
      args: [],
    );
  }

  /// `Error when filling out data`
  String get errorFillingData {
    return Intl.message(
      'Error when filling out data',
      name: 'errorFillingData',
      desc: '',
      args: [],
    );
  }

  /// `Exit`
  String get exit {
    return Intl.message(
      'Exit',
      name: 'exit',
      desc: '',
      args: [],
    );
  }

  /// `Favorites`
  String get favorites {
    return Intl.message(
      'Favorites',
      name: 'favorites',
      desc: '',
      args: [],
    );
  }

  /// `Favorites Page`
  String get favoritesPage {
    return Intl.message(
      'Favorites Page',
      name: 'favoritesPage',
      desc: '',
      args: [],
    );
  }

  /// `Forbidden`
  String get forbidden {
    return Intl.message(
      'Forbidden',
      name: 'forbidden',
      desc: '',
      args: [],
    );
  }

  /// `Full name`
  String get fullName {
    return Intl.message(
      'Full name',
      name: 'fullName',
      desc: '',
      args: [],
    );
  }

  /// `Gender`
  String get gender {
    return Intl.message(
      'Gender',
      name: 'gender',
      desc: '',
      args: [],
    );
  }

  /// `Grade`
  String get grade {
    return Intl.message(
      'Grade',
      name: 'grade',
      desc: '',
      args: [],
    );
  }

  /// `Humidity`
  String get humidity {
    return Intl.message(
      'Humidity',
      name: 'humidity',
      desc: '',
      args: [],
    );
  }

  /// `intermediary`
  String get intermediary {
    return Intl.message(
      'intermediary',
      name: 'intermediary',
      desc: '',
      args: [],
    );
  }

  /// `Internal server error`
  String get internalServerError {
    return Intl.message(
      'Internal server error',
      name: 'internalServerError',
      desc: '',
      args: [],
    );
  }

  /// ` (optional)`
  String get isOptionalInBrackets {
    return Intl.message(
      ' (optional)',
      name: 'isOptionalInBrackets',
      desc: '',
      args: [],
    );
  }

  /// `Location`
  String get location {
    return Intl.message(
      'Location',
      name: 'location',
      desc: '',
      args: [],
    );
  }

  /// `New password`
  String get newPassword {
    return Intl.message(
      'New password',
      name: 'newPassword',
      desc: '',
      args: [],
    );
  }

  /// `No internet connection`
  String get noInternetConnection {
    return Intl.message(
      'No internet connection',
      name: 'noInternetConnection',
      desc: '',
      args: [],
    );
  }

  /// `Not chosen`
  String get notChosen {
    return Intl.message(
      'Not chosen',
      name: 'notChosen',
      desc: '',
      args: [],
    );
  }

  /// `Not specified`
  String get notSpecified {
    return Intl.message(
      'Not specified',
      name: 'notSpecified',
      desc: '',
      args: [],
    );
  }

  /// `Ok`
  String get ok {
    return Intl.message(
      'Ok',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Organization Address`
  String get organizationAddress {
    return Intl.message(
      'Organization Address',
      name: 'organizationAddress',
      desc: '',
      args: [],
    );
  }

  /// `Origin`
  String get origin {
    return Intl.message(
      'Origin',
      name: 'origin',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Move to settings`
  String get permissionDialogueButtonMoveToSettings {
    return Intl.message(
      'Move to settings',
      name: 'permissionDialogueButtonMoveToSettings',
      desc: '',
      args: [],
    );
  }

  /// `Please go to settings and allow camera access`
  String get permissionDialogueCameraAccessDeniedSubTitle {
    return Intl.message(
      'Please go to settings and allow camera access',
      name: 'permissionDialogueCameraAccessDeniedSubTitle',
      desc: '',
      args: [],
    );
  }

  /// `Camera access denied`
  String get permissionDialogueCameraAccessDeniedTitle {
    return Intl.message(
      'Camera access denied',
      name: 'permissionDialogueCameraAccessDeniedTitle',
      desc: '',
      args: [],
    );
  }

  /// `Personal Data`
  String get personalData {
    return Intl.message(
      'Personal Data',
      name: 'personalData',
      desc: '',
      args: [],
    );
  }

  /// `Personal Info`
  String get personalInfo {
    return Intl.message(
      'Personal Info',
      name: 'personalInfo',
      desc: '',
      args: [],
    );
  }

  /// `phone`
  String get phone {
    return Intl.message(
      'phone',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `Phone number`
  String get phoneNumber {
    return Intl.message(
      'Phone number',
      name: 'phoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `What's app Phone`
  String get phoneWhatsApp {
    return Intl.message(
      'What\'s app Phone',
      name: 'phoneWhatsApp',
      desc: '',
      args: [],
    );
  }

  /// `Phone with sms confirmation`
  String get phoneWithSmsConfirmation {
    return Intl.message(
      'Phone with sms confirmation',
      name: 'phoneWithSmsConfirmation',
      desc: '',
      args: [],
    );
  }

  /// `Photo link`
  String get photoLink {
    return Intl.message(
      'Photo link',
      name: 'photoLink',
      desc: '',
      args: [],
    );
  }

  /// `Please connect to the internet`
  String get pleaseConnectToTheInternet {
    return Intl.message(
      'Please connect to the internet',
      name: 'pleaseConnectToTheInternet',
      desc: '',
      args: [],
    );
  }

  /// `Please fill in the field`
  String get pleaseFillInTheField {
    return Intl.message(
      'Please fill in the field',
      name: 'pleaseFillInTheField',
      desc: '',
      args: [],
    );
  }

  /// `Please try again later`
  String get pleaseTryAgainLater {
    return Intl.message(
      'Please try again later',
      name: 'pleaseTryAgainLater',
      desc: '',
      args: [],
    );
  }

  /// `Post selection`
  String get postSelection {
    return Intl.message(
      'Post selection',
      name: 'postSelection',
      desc: '',
      args: [],
    );
  }

  /// `Price`
  String get price {
    return Intl.message(
      'Price',
      name: 'price',
      desc: '',
      args: [],
    );
  }

  /// `Price categories of posts`
  String get priceCategories {
    return Intl.message(
      'Price categories of posts',
      name: 'priceCategories',
      desc: '',
      args: [],
    );
  }

  /// `Product category`
  String get productCategory {
    return Intl.message(
      'Product category',
      name: 'productCategory',
      desc: '',
      args: [],
    );
  }

  /// `Product criterias`
  String get productCriterias {
    return Intl.message(
      'Product criterias',
      name: 'productCriterias',
      desc: '',
      args: [],
    );
  }

  /// `Product description`
  String get productDescription {
    return Intl.message(
      'Product description',
      name: 'productDescription',
      desc: '',
      args: [],
    );
  }

  /// `Product duties`
  String get productDuties {
    return Intl.message(
      'Product duties',
      name: 'productDuties',
      desc: '',
      args: [],
    );
  }

  /// `Product list is empty`
  String get productListIsEmpty {
    return Intl.message(
      'Product list is empty',
      name: 'productListIsEmpty',
      desc: '',
      args: [],
    );
  }

  /// `The product was successfully created`
  String get productSuccessfullyCreated {
    return Intl.message(
      'The product was successfully created',
      name: 'productSuccessfullyCreated',
      desc: '',
      args: [],
    );
  }

  /// `Product title`
  String get productTitle {
    return Intl.message(
      'Product title',
      name: 'productTitle',
      desc: '',
      args: [],
    );
  }

  /// `Profile page`
  String get profilePage {
    return Intl.message(
      'Profile page',
      name: 'profilePage',
      desc: '',
      args: [],
    );
  }

  /// `Published`
  String get published {
    return Intl.message(
      'Published',
      name: 'published',
      desc: '',
      args: [],
    );
  }

  /// `Ready`
  String get ready {
    return Intl.message(
      'Ready',
      name: 'ready',
      desc: '',
      args: [],
    );
  }

  /// `Receive timeout in connection with API server`
  String get receiveTimeout {
    return Intl.message(
      'Receive timeout in connection with API server',
      name: 'receiveTimeout',
      desc: '',
      args: [],
    );
  }

  /// `Repeat new password`
  String get repeatNewPassword {
    return Intl.message(
      'Repeat new password',
      name: 'repeatNewPassword',
      desc: '',
      args: [],
    );
  }

  /// `Role`
  String get role {
    return Intl.message(
      'Role',
      name: 'role',
      desc: '',
      args: [],
    );
  }

  /// `salesman`
  String get salesman {
    return Intl.message(
      'salesman',
      name: 'salesman',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Select from gallery`
  String get selectFromGallery {
    return Intl.message(
      'Select from gallery',
      name: 'selectFromGallery',
      desc: '',
      args: [],
    );
  }

  /// `Service type`
  String get serviceType {
    return Intl.message(
      'Service type',
      name: 'serviceType',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Sign in`
  String get signIn {
    return Intl.message(
      'Sign in',
      name: 'signIn',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account? Sign up`
  String get signInPageSignUpButton {
    return Intl.message(
      'Don\'t have an account? Sign up',
      name: 'signInPageSignUpButton',
      desc: '',
      args: [],
    );
  }

  /// `Sign up`
  String get signUp {
    return Intl.message(
      'Sign up',
      name: 'signUp',
      desc: '',
      args: [],
    );
  }

  /// `Similar jobs`
  String get similarJobs {
    return Intl.message(
      'Similar jobs',
      name: 'similarJobs',
      desc: '',
      args: [],
    );
  }

  /// `Social networks for communication`
  String get socialNetworksForCommunication {
    return Intl.message(
      'Social networks for communication',
      name: 'socialNetworksForCommunication',
      desc: '',
      args: [],
    );
  }

  /// `Oops, something went wrong...`
  String get somethingWentWrong {
    return Intl.message(
      'Oops, something went wrong...',
      name: 'somethingWentWrong',
      desc: '',
      args: [],
    );
  }

  /// `Storage type`
  String get storageType {
    return Intl.message(
      'Storage type',
      name: 'storageType',
      desc: '',
      args: [],
    );
  }

  /// `You have successfully changed your password`
  String get successfullyChanged {
    return Intl.message(
      'You have successfully changed your password',
      name: 'successfullyChanged',
      desc: '',
      args: [],
    );
  }

  /// `Error, try again later`
  String get errorTryAgainLater {
    return Intl.message(
      'Error, try again later',
      name: 'errorTryAgainLater',
      desc: '',
      args: [],
    );
  }

  /// `User data is already taken`
  String get userAlreadyTaken {
    return Intl.message(
      'User data is already taken',
      name: 'userAlreadyTaken',
      desc: '',
      args: [],
    );
  }

  /// `Take a photo`
  String get takePhoto {
    return Intl.message(
      'Take a photo',
      name: 'takePhoto',
      desc: '',
      args: [],
    );
  }

  /// `Telegram link `
  String get telegramLink {
    return Intl.message(
      'Telegram link ',
      name: 'telegramLink',
      desc: '',
      args: [],
    );
  }

  /// `You entered your email incorrectly`
  String get titleWrongEmail {
    return Intl.message(
      'You entered your email incorrectly',
      name: 'titleWrongEmail',
      desc: '',
      args: [],
    );
  }

  /// `Try again`
  String get tryAgain {
    return Intl.message(
      'Try again',
      name: 'tryAgain',
      desc: '',
      args: [],
    );
  }

  /// `Unauthorized`
  String get unauthorized {
    return Intl.message(
      'Unauthorized',
      name: 'unauthorized',
      desc: '',
      args: [],
    );
  }

  /// `Oops something went wrong`
  String get unexpectedError {
    return Intl.message(
      'Oops something went wrong',
      name: 'unexpectedError',
      desc: '',
      args: [],
    );
  }

  /// `Edit product`
  String get editProduct {
    return Intl.message(
      'Edit product',
      name: 'editProduct',
      desc: '',
      args: [],
    );
  }

  /// `Individual user`
  String get userIndividual {
    return Intl.message(
      'Individual user',
      name: 'userIndividual',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get username {
    return Intl.message(
      'Username',
      name: 'username',
      desc: '',
      args: [],
    );
  }

  /// `Username or password is not valid`
  String get usernameOrPasswordIsNotValid {
    return Intl.message(
      'Username or password is not valid',
      name: 'usernameOrPasswordIsNotValid',
      desc: '',
      args: [],
    );
  }

  /// `Organization user`
  String get userOrganization {
    return Intl.message(
      'Organization user',
      name: 'userOrganization',
      desc: '',
      args: [],
    );
  }

  /// `Video link`
  String get videoLink {
    return Intl.message(
      'Video link',
      name: 'videoLink',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to GrainMart`
  String get welcomeToGrainMart {
    return Intl.message(
      'Welcome to GrainMart',
      name: 'welcomeToGrainMart',
      desc: '',
      args: [],
    );
  }

  /// `Write a review`
  String get writeReview {
    return Intl.message(
      'Write a review',
      name: 'writeReview',
      desc: '',
      args: [],
    );
  }

  /// `Please type something`
  String get writeSomeThing {
    return Intl.message(
      'Please type something',
      name: 'writeSomeThing',
      desc: '',
      args: [],
    );
  }

  /// `You entered the email type incorrectly`
  String get wrongEmail {
    return Intl.message(
      'You entered the email type incorrectly',
      name: 'wrongEmail',
      desc: '',
      args: [],
    );
  }

  /// `Year of harvest`
  String get yearOfHarvest {
    return Intl.message(
      'Year of harvest',
      name: 'yearOfHarvest',
      desc: '',
      args: [],
    );
  }

  /// `Sell`
  String get sell {
    return Intl.message(
      'Sell',
      name: 'sell',
      desc: '',
      args: [],
    );
  }

  /// `None`
  String get none {
    return Intl.message(
      'None',
      name: 'none',
      desc: '',
      args: [],
    );
  }

  /// `Product`
  String get product {
    return Intl.message(
      'Product',
      name: 'product',
      desc: '',
      args: [],
    );
  }

  /// `Job`
  String get job {
    return Intl.message(
      'Job',
      name: 'job',
      desc: '',
      args: [],
    );
  }

  /// `Additional services`
  String get additionalServices {
    return Intl.message(
      'Additional services',
      name: 'additionalServices',
      desc: '',
      args: [],
    );
  }

  /// `Deal support`
  String get dealSupport {
    return Intl.message(
      'Deal support',
      name: 'dealSupport',
      desc: '',
      args: [],
    );
  }

  /// `Product evaluation`
  String get productEvaluation {
    return Intl.message(
      'Product evaluation',
      name: 'productEvaluation',
      desc: '',
      args: [],
    );
  }

  /// `Expertise`
  String get expertise {
    return Intl.message(
      'Expertise',
      name: 'expertise',
      desc: '',
      args: [],
    );
  }

  /// `Customs broker`
  String get customsBroker {
    return Intl.message(
      'Customs broker',
      name: 'customsBroker',
      desc: '',
      args: [],
    );
  }

  /// `Appraiser`
  String get appraiser {
    return Intl.message(
      'Appraiser',
      name: 'appraiser',
      desc: '',
      args: [],
    );
  }

  /// `Subsidy assistance`
  String get subsidyAssistance {
    return Intl.message(
      'Subsidy assistance',
      name: 'subsidyAssistance',
      desc: '',
      args: [],
    );
  }

  /// `Hiring worker`
  String get hiringWorker {
    return Intl.message(
      'Hiring worker',
      name: 'hiringWorker',
      desc: '',
      args: [],
    );
  }

  /// `Laboratory`
  String get laboratory {
    return Intl.message(
      'Laboratory',
      name: 'laboratory',
      desc: '',
      args: [],
    );
  }

  /// `Logistics`
  String get logistics {
    return Intl.message(
      'Logistics',
      name: 'logistics',
      desc: '',
      args: [],
    );
  }

  /// `Product info`
  String get productInfo {
    return Intl.message(
      'Product info',
      name: 'productInfo',
      desc: '',
      args: [],
    );
  }

  /// `The product was successfully edited`
  String get productSuccessfullyEdited {
    return Intl.message(
      'The product was successfully edited',
      name: 'productSuccessfullyEdited',
      desc: '',
      args: [],
    );
  }

  /// `Invalid Mobile Number`
  String get invalidMobileNumber {
    return Intl.message(
      'Invalid Mobile Number',
      name: 'invalidMobileNumber',
      desc: '',
      args: [],
    );
  }

  /// `Complain to this post`
  String get complainToThisPost {
    return Intl.message(
      'Complain to this post',
      name: 'complainToThisPost',
      desc: '',
      args: [],
    );
  }

  /// `Follow this seller`
  String get followThisSeller {
    return Intl.message(
      'Follow this seller',
      name: 'followThisSeller',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message(
      'Search',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Required fields`
  String get requiredFields {
    return Intl.message(
      'Required fields',
      name: 'requiredFields',
      desc: '',
      args: [],
    );
  }

  /// `Please fill in required fields or check if you have filled in the fields correctly`
  String get pleaseFillInRequiredFieldsOrCheckValidation {
    return Intl.message(
      'Please fill in required fields or check if you have filled in the fields correctly',
      name: 'pleaseFillInRequiredFieldsOrCheckValidation',
      desc: '',
      args: [],
    );
  }

  /// `Created ads`
  String get createdAds {
    return Intl.message(
      'Created ads',
      name: 'createdAds',
      desc: '',
      args: [],
    );
  }

  /// `Grains`
  String get grains {
    return Intl.message(
      'Grains',
      name: 'grains',
      desc: '',
      args: [],
    );
  }

  /// `Legumes`
  String get legumes {
    return Intl.message(
      'Legumes',
      name: 'legumes',
      desc: '',
      args: [],
    );
  }

  /// `Feed`
  String get feed {
    return Intl.message(
      'Feed',
      name: 'feed',
      desc: '',
      args: [],
    );
  }

  /// `Oil seeds`
  String get oilSeeds {
    return Intl.message(
      'Oil seeds',
      name: 'oilSeeds',
      desc: '',
      args: [],
    );
  }

  /// `Essential oils`
  String get essentialOils {
    return Intl.message(
      'Essential oils',
      name: 'essentialOils',
      desc: '',
      args: [],
    );
  }

  /// `Technical waste`
  String get technicalWaste {
    return Intl.message(
      'Technical waste',
      name: 'technicalWaste',
      desc: '',
      args: [],
    );
  }

  /// `Vegetables`
  String get vegetables {
    return Intl.message(
      'Vegetables',
      name: 'vegetables',
      desc: '',
      args: [],
    );
  }

  /// `Medicinal`
  String get medicinal {
    return Intl.message(
      'Medicinal',
      name: 'medicinal',
      desc: '',
      args: [],
    );
  }

  /// `Flowers`
  String get flowers {
    return Intl.message(
      'Flowers',
      name: 'flowers',
      desc: '',
      args: [],
    );
  }

  /// `Fruits`
  String get fruits {
    return Intl.message(
      'Fruits',
      name: 'fruits',
      desc: '',
      args: [],
    );
  }

  /// `Berries`
  String get berries {
    return Intl.message(
      'Berries',
      name: 'berries',
      desc: '',
      args: [],
    );
  }

  /// `Sugar beet`
  String get sugarBeet {
    return Intl.message(
      'Sugar beet',
      name: 'sugarBeet',
      desc: '',
      args: [],
    );
  }

  /// `Category`
  String get category {
    return Intl.message(
      'Category',
      name: 'category',
      desc: '',
      args: [],
    );
  }

  /// `Do not advertise`
  String get doNotAdvertise {
    return Intl.message(
      'Do not advertise',
      name: 'doNotAdvertise',
      desc: '',
      args: [],
    );
  }

  /// `Advertise ads`
  String get advertiseAds {
    return Intl.message(
      'Advertise ads',
      name: 'advertiseAds',
      desc: '',
      args: [],
    );
  }

  /// `Wheat`
  String get wheat {
    return Intl.message(
      'Wheat',
      name: 'wheat',
      desc: '',
      args: [],
    );
  }

  /// `Barley`
  String get barley {
    return Intl.message(
      'Barley',
      name: 'barley',
      desc: '',
      args: [],
    );
  }

  /// `Oats`
  String get oats {
    return Intl.message(
      'Oats',
      name: 'oats',
      desc: '',
      args: [],
    );
  }

  /// `Rye`
  String get rye {
    return Intl.message(
      'Rye',
      name: 'rye',
      desc: '',
      args: [],
    );
  }

  /// `Corn`
  String get corn {
    return Intl.message(
      'Corn',
      name: 'corn',
      desc: '',
      args: [],
    );
  }

  /// `Millet`
  String get millet {
    return Intl.message(
      'Millet',
      name: 'millet',
      desc: '',
      args: [],
    );
  }

  /// `Buckwheat`
  String get buckwheat {
    return Intl.message(
      'Buckwheat',
      name: 'buckwheat',
      desc: '',
      args: [],
    );
  }

  /// `Triticale`
  String get triticale {
    return Intl.message(
      'Triticale',
      name: 'triticale',
      desc: '',
      args: [],
    );
  }

  /// `Spelt`
  String get spelt {
    return Intl.message(
      'Spelt',
      name: 'spelt',
      desc: '',
      args: [],
    );
  }

  /// `Sunflower`
  String get sunflower {
    return Intl.message(
      'Sunflower',
      name: 'sunflower',
      desc: '',
      args: [],
    );
  }

  /// `Fodder cabbage`
  String get fodderCabbage {
    return Intl.message(
      'Fodder cabbage',
      name: 'fodderCabbage',
      desc: '',
      args: [],
    );
  }

  /// `Jerusalem artichoke`
  String get jerusalemArtichoke {
    return Intl.message(
      'Jerusalem artichoke',
      name: 'jerusalemArtichoke',
      desc: '',
      args: [],
    );
  }

  /// `White mustard`
  String get whiteMustard {
    return Intl.message(
      'White mustard',
      name: 'whiteMustard',
      desc: '',
      args: [],
    );
  }

  /// `Winter rape`
  String get winterRape {
    return Intl.message(
      'Winter rape',
      name: 'winterRape',
      desc: '',
      args: [],
    );
  }

  /// `Sorghum`
  String get sorghum {
    return Intl.message(
      'Sorghum',
      name: 'sorghum',
      desc: '',
      args: [],
    );
  }

  /// `Peas`
  String get peas {
    return Intl.message(
      'Peas',
      name: 'peas',
      desc: '',
      args: [],
    );
  }

  /// `Beans`
  String get beans {
    return Intl.message(
      'Beans',
      name: 'beans',
      desc: '',
      args: [],
    );
  }

  /// `Lentil`
  String get lentil {
    return Intl.message(
      'Lentil',
      name: 'lentil',
      desc: '',
      args: [],
    );
  }

  /// `Vigne`
  String get vigne {
    return Intl.message(
      'Vigne',
      name: 'vigne',
      desc: '',
      args: [],
    );
  }

  /// `Vetch`
  String get vetch {
    return Intl.message(
      'Vetch',
      name: 'vetch',
      desc: '',
      args: [],
    );
  }

  /// `Soybean`
  String get soybean {
    return Intl.message(
      'Soybean',
      name: 'soybean',
      desc: '',
      args: [],
    );
  }

  /// `Chickpea`
  String get chickpea {
    return Intl.message(
      'Chickpea',
      name: 'chickpea',
      desc: '',
      args: [],
    );
  }

  /// `Lupine`
  String get lupine {
    return Intl.message(
      'Lupine',
      name: 'lupine',
      desc: '',
      args: [],
    );
  }

  /// `Peanut`
  String get peanut {
    return Intl.message(
      'Peanut',
      name: 'peanut',
      desc: '',
      args: [],
    );
  }

  /// `Feed beans`
  String get feedBeans {
    return Intl.message(
      'Feed beans',
      name: 'feedBeans',
      desc: '',
      args: [],
    );
  }

  /// `Cashew`
  String get cashew {
    return Intl.message(
      'Cashew',
      name: 'cashew',
      desc: '',
      args: [],
    );
  }

  /// `Pistachio`
  String get pistachio {
    return Intl.message(
      'Pistachio',
      name: 'pistachio',
      desc: '',
      args: [],
    );
  }

  /// `Safflower`
  String get safflower {
    return Intl.message(
      'Safflower',
      name: 'safflower',
      desc: '',
      args: [],
    );
  }

  /// `Spanish artichoke`
  String get spanishArtichoke {
    return Intl.message(
      'Spanish artichoke',
      name: 'spanishArtichoke',
      desc: '',
      args: [],
    );
  }

  /// `Annual sunflower`
  String get annualSunflower {
    return Intl.message(
      'Annual sunflower',
      name: 'annualSunflower',
      desc: '',
      args: [],
    );
  }

  /// `Spotted St. John's Wort`
  String get spottedStJohnsWort {
    return Intl.message(
      'Spotted St. John\'s Wort',
      name: 'spottedStJohnsWort',
      desc: '',
      args: [],
    );
  }

  /// `Cultivated peanut`
  String get cultivatedPeanut {
    return Intl.message(
      'Cultivated peanut',
      name: 'cultivatedPeanut',
      desc: '',
      args: [],
    );
  }

  /// `Cultivated soybean`
  String get cultivatedSoybean {
    return Intl.message(
      'Cultivated soybean',
      name: 'cultivatedSoybean',
      desc: '',
      args: [],
    );
  }

  /// `Beech`
  String get beech {
    return Intl.message(
      'Beech',
      name: 'beech',
      desc: '',
      args: [],
    );
  }

  /// `Cucumber grass`
  String get cucumberGrass {
    return Intl.message(
      'Cucumber grass',
      name: 'cucumberGrass',
      desc: '',
      args: [],
    );
  }

  /// `Cultivated grape`
  String get cultivatedGrape {
    return Intl.message(
      'Cultivated grape',
      name: 'cultivatedGrape',
      desc: '',
      args: [],
    );
  }

  /// `Shorea`
  String get shorea {
    return Intl.message(
      'Shorea',
      name: 'shorea',
      desc: '',
      args: [],
    );
  }

  /// `Soft wheat`
  String get softWheat {
    return Intl.message(
      'Soft wheat',
      name: 'softWheat',
      desc: '',
      args: [],
    );
  }

  /// `Hard wheat`
  String get hardWheat {
    return Intl.message(
      'Hard wheat',
      name: 'hardWheat',
      desc: '',
      args: [],
    );
  }

  /// `Sugar maize`
  String get sugarMaize {
    return Intl.message(
      'Sugar maize',
      name: 'sugarMaize',
      desc: '',
      args: [],
    );
  }

  /// `Coriander`
  String get coriander {
    return Intl.message(
      'Coriander',
      name: 'coriander',
      desc: '',
      args: [],
    );
  }

  /// `Rape`
  String get rape {
    return Intl.message(
      'Rape',
      name: 'rape',
      desc: '',
      args: [],
    );
  }

  /// `Hemp`
  String get hemp {
    return Intl.message(
      'Hemp',
      name: 'hemp',
      desc: '',
      args: [],
    );
  }

  /// `Mustard`
  String get mustard {
    return Intl.message(
      'Mustard',
      name: 'mustard',
      desc: '',
      args: [],
    );
  }

  /// `Abyssinian kale`
  String get abyssinianKale {
    return Intl.message(
      'Abyssinian kale',
      name: 'abyssinianKale',
      desc: '',
      args: [],
    );
  }

  /// `Black currant`
  String get blackCurrant {
    return Intl.message(
      'Black currant',
      name: 'blackCurrant',
      desc: '',
      args: [],
    );
  }

  /// `Avocado`
  String get avocado {
    return Intl.message(
      'Avocado',
      name: 'avocado',
      desc: '',
      args: [],
    );
  }

  /// `Common flax`
  String get commonFlax {
    return Intl.message(
      'Common flax',
      name: 'commonFlax',
      desc: '',
      args: [],
    );
  }

  /// `Opium poppy`
  String get opiumPoppy {
    return Intl.message(
      'Opium poppy',
      name: 'opiumPoppy',
      desc: '',
      args: [],
    );
  }

  /// `Cotton`
  String get cotton {
    return Intl.message(
      'Cotton',
      name: 'cotton',
      desc: '',
      args: [],
    );
  }

  /// `Cotton plant`
  String get cottonPlant {
    return Intl.message(
      'Cotton plant',
      name: 'cottonPlant',
      desc: '',
      args: [],
    );
  }

  /// `Cocoa`
  String get cocoa {
    return Intl.message(
      'Cocoa',
      name: 'cocoa',
      desc: '',
      args: [],
    );
  }

  /// `Arabian coffee`
  String get arabianCoffee {
    return Intl.message(
      'Arabian coffee',
      name: 'arabianCoffee',
      desc: '',
      args: [],
    );
  }

  /// `European olive`
  String get europeanOlive {
    return Intl.message(
      'European olive',
      name: 'europeanOlive',
      desc: '',
      args: [],
    );
  }

  /// `Tung`
  String get tung {
    return Intl.message(
      'Tung',
      name: 'tung',
      desc: '',
      args: [],
    );
  }

  /// `Lactuca virosa`
  String get lactucaVirosa {
    return Intl.message(
      'Lactuca virosa',
      name: 'lactucaVirosa',
      desc: '',
      args: [],
    );
  }

  /// `Common broomrape`
  String get commonBroomrape {
    return Intl.message(
      'Common broomrape',
      name: 'commonBroomrape',
      desc: '',
      args: [],
    );
  }

  /// `Boleko`
  String get boleko {
    return Intl.message(
      'Boleko',
      name: 'boleko',
      desc: '',
      args: [],
    );
  }

  /// `Walnut`
  String get walnut {
    return Intl.message(
      'Walnut',
      name: 'walnut',
      desc: '',
      args: [],
    );
  }

  /// `Attalea`
  String get attalea {
    return Intl.message(
      'Attalea',
      name: 'attalea',
      desc: '',
      args: [],
    );
  }

  /// `Coconut palm`
  String get coconutPalm {
    return Intl.message(
      'Coconut palm',
      name: 'coconutPalm',
      desc: '',
      args: [],
    );
  }

  /// `Oil palm`
  String get oilPalm {
    return Intl.message(
      'Oil palm',
      name: 'oilPalm',
      desc: '',
      args: [],
    );
  }

  /// `Balanites`
  String get balanites {
    return Intl.message(
      'Balanites',
      name: 'balanites',
      desc: '',
      args: [],
    );
  }

  /// `Tomato`
  String get tomato {
    return Intl.message(
      'Tomato',
      name: 'tomato',
      desc: '',
      args: [],
    );
  }

  /// `Indian sesame`
  String get indianSesame {
    return Intl.message(
      'Indian sesame',
      name: 'indianSesame',
      desc: '',
      args: [],
    );
  }

  /// `Apricot`
  String get apricot {
    return Intl.message(
      'Apricot',
      name: 'apricot',
      desc: '',
      args: [],
    );
  }

  /// `Common cherry`
  String get commonCherry {
    return Intl.message(
      'Common cherry',
      name: 'commonCherry',
      desc: '',
      args: [],
    );
  }

  /// `Domestic plum`
  String get domesticPlum {
    return Intl.message(
      'Domestic plum',
      name: 'domesticPlum',
      desc: '',
      args: [],
    );
  }

  /// `Almond`
  String get almond {
    return Intl.message(
      'Almond',
      name: 'almond',
      desc: '',
      args: [],
    );
  }

  /// `Peach`
  String get peach {
    return Intl.message(
      'Peach',
      name: 'peach',
      desc: '',
      args: [],
    );
  }

  /// `Argania spinosa`
  String get arganiaSpinosa {
    return Intl.message(
      'Argania spinosa',
      name: 'arganiaSpinosa',
      desc: '',
      args: [],
    );
  }

  /// `Maduka`
  String get maduka {
    return Intl.message(
      'Maduka',
      name: 'maduka',
      desc: '',
      args: [],
    );
  }

  /// `Pinyon`
  String get pinyon {
    return Intl.message(
      'Pinyon',
      name: 'pinyon',
      desc: '',
      args: [],
    );
  }

  /// `Siberian pine`
  String get siberianPine {
    return Intl.message(
      'Siberian pine',
      name: 'siberianPine',
      desc: '',
      args: [],
    );
  }

  /// `Common watermelon`
  String get commonWatermelon {
    return Intl.message(
      'Common watermelon',
      name: 'commonWatermelon',
      desc: '',
      args: [],
    );
  }

  /// `Common melon`
  String get commonMelon {
    return Intl.message(
      'Common melon',
      name: 'commonMelon',
      desc: '',
      args: [],
    );
  }

  /// `Great pumpkin`
  String get greatPumpkin {
    return Intl.message(
      'Great pumpkin',
      name: 'greatPumpkin',
      desc: '',
      args: [],
    );
  }

  /// `Common pumpkin`
  String get commonPumpkin {
    return Intl.message(
      'Common pumpkin',
      name: 'commonPumpkin',
      desc: '',
      args: [],
    );
  }

  /// `Common hops`
  String get commonHops {
    return Intl.message(
      'Common hops',
      name: 'commonHops',
      desc: '',
      args: [],
    );
  }

  /// `Tea`
  String get tea {
    return Intl.message(
      'Tea',
      name: 'tea',
      desc: '',
      args: [],
    );
  }

  /// `Iberian lalemantia`
  String get iberianLalemantia {
    return Intl.message(
      'Iberian lalemantia',
      name: 'iberianLalemantia',
      desc: '',
      args: [],
    );
  }

  /// `Perilla`
  String get perilla {
    return Intl.message(
      'Perilla',
      name: 'perilla',
      desc: '',
      args: [],
    );
  }

  /// `Batat`
  String get batat {
    return Intl.message(
      'Batat',
      name: 'batat',
      desc: '',
      args: [],
    );
  }

  /// `Potato`
  String get potato {
    return Intl.message(
      'Potato',
      name: 'potato',
      desc: '',
      args: [],
    );
  }

  /// `Topinambur`
  String get topinambur {
    return Intl.message(
      'Topinambur',
      name: 'topinambur',
      desc: '',
      args: [],
    );
  }

  /// `Brukva`
  String get brukva {
    return Intl.message(
      'Brukva',
      name: 'brukva',
      desc: '',
      args: [],
    );
  }

  /// `Carrot`
  String get carrot {
    return Intl.message(
      'Carrot',
      name: 'carrot',
      desc: '',
      args: [],
    );
  }

  /// `Parsnip`
  String get parsnip {
    return Intl.message(
      'Parsnip',
      name: 'parsnip',
      desc: '',
      args: [],
    );
  }

  /// `Parsley`
  String get parsley {
    return Intl.message(
      'Parsley',
      name: 'parsley',
      desc: '',
      args: [],
    );
  }

  /// `Radish`
  String get radish {
    return Intl.message(
      'Radish',
      name: 'radish',
      desc: '',
      args: [],
    );
  }

  /// `Turnip`
  String get turnip {
    return Intl.message(
      'Turnip',
      name: 'turnip',
      desc: '',
      args: [],
    );
  }

  /// `Repka`
  String get repka {
    return Intl.message(
      'Repka',
      name: 'repka',
      desc: '',
      args: [],
    );
  }

  /// `Beetroot`
  String get beetroot {
    return Intl.message(
      'Beetroot',
      name: 'beetroot',
      desc: '',
      args: [],
    );
  }

  /// `Celery`
  String get celery {
    return Intl.message(
      'Celery',
      name: 'celery',
      desc: '',
      args: [],
    );
  }

  /// `Horseradish`
  String get horseradish {
    return Intl.message(
      'Horseradish',
      name: 'horseradish',
      desc: '',
      args: [],
    );
  }

  /// `Cabbage`
  String get cabbage {
    return Intl.message(
      'Cabbage',
      name: 'cabbage',
      desc: '',
      args: [],
    );
  }

  /// `Broccoli`
  String get broccoli {
    return Intl.message(
      'Broccoli',
      name: 'broccoli',
      desc: '',
      args: [],
    );
  }

  /// `Kohlrabi`
  String get kohlrabi {
    return Intl.message(
      'Kohlrabi',
      name: 'kohlrabi',
      desc: '',
      args: [],
    );
  }

  /// `Lettuce`
  String get lettuce {
    return Intl.message(
      'Lettuce',
      name: 'lettuce',
      desc: '',
      args: [],
    );
  }

  /// `Dill`
  String get dill {
    return Intl.message(
      'Dill',
      name: 'dill',
      desc: '',
      args: [],
    );
  }

  /// `Tarragon`
  String get tarragon {
    return Intl.message(
      'Tarragon',
      name: 'tarragon',
      desc: '',
      args: [],
    );
  }

  /// `Chervil`
  String get chervil {
    return Intl.message(
      'Chervil',
      name: 'chervil',
      desc: '',
      args: [],
    );
  }

  /// `Basil`
  String get basil {
    return Intl.message(
      'Basil',
      name: 'basil',
      desc: '',
      args: [],
    );
  }

  /// `Marjoram`
  String get marjoram {
    return Intl.message(
      'Marjoram',
      name: 'marjoram',
      desc: '',
      args: [],
    );
  }

  /// `Onion`
  String get onion {
    return Intl.message(
      'Onion',
      name: 'onion',
      desc: '',
      args: [],
    );
  }

  /// `Garlic`
  String get garlic {
    return Intl.message(
      'Garlic',
      name: 'garlic',
      desc: '',
      args: [],
    );
  }

  /// `Cucumber`
  String get cucumber {
    return Intl.message(
      'Cucumber',
      name: 'cucumber',
      desc: '',
      args: [],
    );
  }

  /// `Pumpkin`
  String get pumpkin {
    return Intl.message(
      'Pumpkin',
      name: 'pumpkin',
      desc: '',
      args: [],
    );
  }

  /// `Zucchini`
  String get zucchini {
    return Intl.message(
      'Zucchini',
      name: 'zucchini',
      desc: '',
      args: [],
    );
  }

  /// `Pattison`
  String get pattison {
    return Intl.message(
      'Pattison',
      name: 'pattison',
      desc: '',
      args: [],
    );
  }

  /// `Artichoke`
  String get artichoke {
    return Intl.message(
      'Artichoke',
      name: 'artichoke',
      desc: '',
      args: [],
    );
  }

  /// `Asparagus`
  String get asparagus {
    return Intl.message(
      'Asparagus',
      name: 'asparagus',
      desc: '',
      args: [],
    );
  }

  /// `Rhubarb`
  String get rhubarb {
    return Intl.message(
      'Rhubarb',
      name: 'rhubarb',
      desc: '',
      args: [],
    );
  }

  /// `Product subcategory`
  String get productSubcategory {
    return Intl.message(
      'Product subcategory',
      name: 'productSubcategory',
      desc: '',
      args: [],
    );
  }

  /// `FAQ`
  String get faq {
    return Intl.message(
      'FAQ',
      name: 'faq',
      desc: '',
      args: [],
    );
  }

  /// `No FAQs found`
  String get noFaqsFound {
    return Intl.message(
      'No FAQs found',
      name: 'noFaqsFound',
      desc: '',
      args: [],
    );
  }

  /// `Assessor`
  String get assessor {
    return Intl.message(
      'Assessor',
      name: 'assessor',
      desc: '',
      args: [],
    );
  }

  /// `Truck driver`
  String get truckDriver {
    return Intl.message(
      'Truck driver',
      name: 'truckDriver',
      desc: '',
      args: [],
    );
  }

  /// `Worker`
  String get worker {
    return Intl.message(
      'Worker',
      name: 'worker',
      desc: '',
      args: [],
    );
  }

  /// `Loading crew`
  String get loadingCrew {
    return Intl.message(
      'Loading crew',
      name: 'loadingCrew',
      desc: '',
      args: [],
    );
  }

  /// `Logistics company`
  String get logisticsCompany {
    return Intl.message(
      'Logistics company',
      name: 'logisticsCompany',
      desc: '',
      args: [],
    );
  }

  /// `Agricultural equipment sales`
  String get agriculturalEquipmentSales {
    return Intl.message(
      'Agricultural equipment sales',
      name: 'agriculturalEquipmentSales',
      desc: '',
      args: [],
    );
  }

  /// `Chemicals sales`
  String get chemicalsSales {
    return Intl.message(
      'Chemicals sales',
      name: 'chemicalsSales',
      desc: '',
      args: [],
    );
  }

  /// `GPS equipment sales`
  String get gpsEquipmentSales {
    return Intl.message(
      'GPS equipment sales',
      name: 'gpsEquipmentSales',
      desc: '',
      args: [],
    );
  }

  /// `Land sales`
  String get landSales {
    return Intl.message(
      'Land sales',
      name: 'landSales',
      desc: '',
      args: [],
    );
  }

  /// `Seed sales`
  String get seedSales {
    return Intl.message(
      'Seed sales',
      name: 'seedSales',
      desc: '',
      args: [],
    );
  }

  /// `Chemical spraying services`
  String get chemicalSprayingServices {
    return Intl.message(
      'Chemical spraying services',
      name: 'chemicalSprayingServices',
      desc: '',
      args: [],
    );
  }

  /// `Parts sales`
  String get partsSales {
    return Intl.message(
      'Parts sales',
      name: 'partsSales',
      desc: '',
      args: [],
    );
  }

  /// `Elevators`
  String get elevators {
    return Intl.message(
      'Elevators',
      name: 'elevators',
      desc: '',
      args: [],
    );
  }

  /// `Factories`
  String get factories {
    return Intl.message(
      'Factories',
      name: 'factories',
      desc: '',
      args: [],
    );
  }

  /// `Specialization`
  String get specialization {
    return Intl.message(
      'Specialization',
      name: 'specialization',
      desc: '',
      args: [],
    );
  }

  /// `Delete ad`
  String get deleteAd {
    return Intl.message(
      'Delete ad',
      name: 'deleteAd',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'kk'),
      Locale.fromSubtags(languageCode: 'ky'),
      Locale.fromSubtags(languageCode: 'ru'),
      Locale.fromSubtags(languageCode: 'uz'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
