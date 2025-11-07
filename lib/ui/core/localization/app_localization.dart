import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AppLocalization {
  static AppLocalization of(BuildContext context) {
    return Localizations.of(context, AppLocalization);
  }

  static const _strings = <String, String>{
    'appName': 'Fitnest',
    'email': 'Email',
    'password': 'Password',
    'login': 'Login',
    'register': 'Register',
    'dontHaveAccount': 'Don\'t have an account yet?',
    'alreadyHaveAccount': 'Already have an account?',
    'haveAccount': 'Have an account?',
    'welcomeBack': 'Welcome Back',
    'hetThere': 'Hey There!',
    'createAnAccount': 'Create an Account',
    'firstName': 'First Name',
    'lastName': 'Last Name',
    'confirmPassword': 'Confirm Password',
    'termsAndConditions':
        'By continuing you accept our Privacy Policy and Term of Use',
    'letsCompleteYourProfile': "Let's complete your profile",
    'itWillHelpUsToKnowMoreAboutYou': 'It will help us to know more about you!',
    'weight': 'Weight',
    'height': 'Height',
    'kg': 'KG',
    'cm': 'CM',
    'gender': 'Gender',
    'dateOfBirth': 'Date of Birth',
    'male': 'Male',
    'female': 'Female',
    'selectGender': 'Select Gender',
    'genderIsRequired': 'Gender is required',
    'dateOfBirthIsRequired': 'Date of Birth is required',
    'weightIsRequired': 'Weight is required',
    'heightIsRequired': 'Height is required',
    'next': 'Next',
    'confirm': 'Confirm',
  };

  static String _get(String label) =>
      _strings[label] ?? '[${label.toUpperCase()}]';

  String get appName => _get('appName');
  String get email => _get('email');
  String get password => _get('password');
  String get login => _get('login');
  String get register => _get('register');
  String get forgotPassword => _get('forgotPassword');
  String get dontHaveAccount => _get('dontHaveAccount');
  String get alreadyHaveAccount => _get('alreadyHaveAccount');
  String get haveAccount => _get('haveAccount');
  String get welcomeBack => _get('welcomeBack');
  String get hetThere => _get('hetThere');
  String get createAnAccount => _get('createAnAccount');
  String get firstName => _get('firstName');
  String get lastName => _get('lastName');
  String get confirmPassword => _get('confirmPassword');
  String get termsAndConditions => _get('termsAndConditions');
  String get letsCompleteYourProfile => _get('letsCompleteYourProfile');
  String get itWillHelpUsToKnowMoreAboutYou =>
      _get('itWillHelpUsToKnowMoreAboutYou');
  String get weight => _get('weight');
  String get height => _get('height');
  String get kg => _get('kg');
  String get cm => _get('cm');
  String get gender => _get('gender');
  String get dateOfBirth => _get('dateOfBirth');
  String get male => _get('male');
  String get female => _get('female');
  String get selectGender => _get('selectGender');
  String get genderIsRequired => _get('genderIsRequired');
  String get dateOfBirthIsRequired => _get('dateOfBirthIsRequired');
  String get weightIsRequired => _get('weightIsRequired');
  String get heightIsRequired => _get('heightIsRequired');
  String get next => _get('next');
  String get confirm => _get('confirm');
}

class AppLocalizationDelegate extends LocalizationsDelegate<AppLocalization> {
  @override
  bool isSupported(Locale locale) => locale.languageCode == 'en';

  @override
  Future<AppLocalization> load(Locale locale) {
    return SynchronousFuture(AppLocalization());
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<AppLocalization> old) =>
      false;
}
