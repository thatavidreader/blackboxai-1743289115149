import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter/foundation.dart' show SynchronousFuture;

class AppLocalizations {
  final Locale locale;

  AppLocalizations(this.locale);

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  static const Map<String, Map<String, String>> _localizedValues = {
    'en': {
      'appTitle': 'Krishimitra',
      'login': 'Login',
      'welcome': 'Welcome',
    },
    'hi': {
      'appTitle': 'कृषिमित्र',
      'login': 'लॉग इन',
      'welcome': 'स्वागत है',
    },
    'ta': {
      'appTitle': 'கிருஷிமித்ரா',
      'login': 'உள்நுழைய',
      'welcome': 'வரவேற்கிறோம்',
    },
    'mr': {
      'appTitle': 'कृषिमित्र',
      'login': 'लॉग इन',
      'welcome': 'स्वागत आहे',
    },
  };

  String get appTitle {
    return _localizedValues[locale.languageCode]!['appTitle']!;
  }

  String get login {
    return _localizedValues[locale.languageCode]!['login']!;
  }

  String get welcome {
    return _localizedValues[locale.languageCode]!['welcome']!;
  }
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['en', 'hi', 'ta', 'mr'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(AppLocalizations(locale));
  }

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}