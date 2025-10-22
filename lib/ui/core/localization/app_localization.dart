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
