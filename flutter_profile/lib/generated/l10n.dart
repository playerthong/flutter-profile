// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

class S {
  S();
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final String name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      return S();
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  String get story_give_feedback {
    return Intl.message(
      'Give feedback!',
      name: 'story_give_feedback',
      desc: '',
      args: [],
    );
  }

  String get story_good_evening_sofus {
    return Intl.message(
      'Good evening,\nSofus',
      name: 'story_good_evening_sofus',
      desc: '',
      args: [],
    );
  }

  String get story_make_today_story {
    return Intl.message(
      'MAKE TODAYS STORY',
      name: 'story_make_today_story',
      desc: '',
      args: [],
    );
  }

  String get profile {
    return Intl.message(
      'PROFILE',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  String get profile_journible {
    return Intl.message(
      'JOURNIBLE',
      name: 'profile_journible',
      desc: '',
      args: [],
    );
  }

  String get profile_join_journible_premium {
    return Intl.message(
      'Join Journible Premium',
      name: 'profile_join_journible_premium',
      desc: '',
      args: [],
    );
  }

  String get profile_share_with_a_teammate {
    return Intl.message(
      'Share with a teammate',
      name: 'profile_share_with_a_teammate',
      desc: '',
      args: [],
    );
  }

  String get profile_rate_journible_5_stars {
    return Intl.message(
      'Rate journible 5-stars',
      name: 'profile_rate_journible_5_stars',
      desc: '',
      args: [],
    );
  }

  String get profile_get_in_touch {
    return Intl.message(
      'Get in touch',
      name: 'profile_get_in_touch',
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
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (Locale supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}