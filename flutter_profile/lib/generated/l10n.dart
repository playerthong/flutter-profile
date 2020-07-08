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

  String get storyGiveFeedback {
    return Intl.message(
      'Give feedback!',
      name: 'storyGiveFeedback',
      desc: '',
      args: [],
    );
  }

  String get storyGoodEveningSofus {
    return Intl.message(
      'Good evening,\nSofus',
      name: 'storyGoodEveningSofus',
      desc: '',
      args: [],
    );
  }

  String get storyMakeTodayStory {
    return Intl.message(
      'MAKE TODAYS STORY',
      name: 'storyMakeTodayStory',
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

  String get profileJournible {
    return Intl.message(
      'JOURNIBLE',
      name: 'profileJournible',
      desc: '',
      args: [],
    );
  }

  String get profileJoinJourniblePremium {
    return Intl.message(
      'Join Journible Premium',
      name: 'profileJoinJourniblePremium',
      desc: '',
      args: [],
    );
  }

  String get profileShareWithATeammate {
    return Intl.message(
      'Share with a\nteammate',
      name: 'profileShareWithATeammate',
      desc: '',
      args: [],
    );
  }

  String get profileRateJournible5Stars {
    return Intl.message(
      'Rate journible\n5-stars',
      name: 'profileRateJournible5Stars',
      desc: '',
      args: [],
    );
  }

  String get profileGetInTouch {
    return Intl.message(
      'Get in touch',
      name: 'profileGetInTouch',
      desc: '',
      args: [],
    );
  }

  String get share_that_journible_feeling {
    return Intl.message(
      'Share that Journible feeling',
      name: 'share_that_journible_feeling',
      desc: '',
      args: [],
    );
  }

  String get share_help_your_friends {
    return Intl.message(
      'Help your friends or teamates to get\nthe best out of their sports-journey',
      name: 'share_help_your_friends',
      desc: '',
      args: [],
    );
  }

  String get share_send_invite {
    return Intl.message(
      'SEND INVITE',
      name: 'share_send_invite',
      desc: '',
      args: [],
    );
  }

  String get share_text {
    return Intl.message(
      'TEXT',
      name: 'share_text',
      desc: '',
      args: [],
    );
  }

  String get share {
    return Intl.message(
      'SHARE',
      name: 'share',
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