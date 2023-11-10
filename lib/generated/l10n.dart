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

class I10n {
  I10n();

  static I10n? _current;

  static I10n get current {
    assert(_current != null,
        'No instance of I10n was loaded. Try to initialize the I10n delegate before accessing I10n.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<I10n> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = I10n();
      I10n._current = instance;

      return instance;
    });
  }

  static I10n of(BuildContext context) {
    final instance = I10n.maybeOf(context);
    assert(instance != null,
        'No instance of I10n present in the widget tree. Did you add I10n.delegate in localizationsDelegates?');
    return instance!;
  }

  static I10n? maybeOf(BuildContext context) {
    return Localizations.of<I10n>(context, I10n);
  }

  /// `Flutter Movie App`
  String get appTitle {
    return Intl.message(
      'Flutter Movie App',
      name: 'appTitle',
      desc: '',
      args: [],
    );
  }

  /// `Warning`
  String get alertWarning {
    return Intl.message(
      'Warning',
      name: 'alertWarning',
      desc: '',
      args: [],
    );
  }

  /// `No connection, please check your internet`
  String get alertNoConnection {
    return Intl.message(
      'No connection, please check your internet',
      name: 'alertNoConnection',
      desc: '',
      args: [],
    );
  }

  /// `Failed`
  String get alertFailed {
    return Intl.message(
      'Failed',
      name: 'alertFailed',
      desc: '',
      args: [],
    );
  }

  /// `Request time out`
  String get alertTimeOut {
    return Intl.message(
      'Request time out',
      name: 'alertTimeOut',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get alertConfirm {
    return Intl.message(
      'Confirm',
      name: 'alertConfirm',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get alertCancel {
    return Intl.message(
      'Cancel',
      name: 'alertCancel',
      desc: '',
      args: [],
    );
  }

  /// `Success`
  String get alertSuccess {
    return Intl.message(
      'Success',
      name: 'alertSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Success add movie!`
  String get alertSuccessAddMovie {
    return Intl.message(
      'Success add movie!',
      name: 'alertSuccessAddMovie',
      desc: '',
      args: [],
    );
  }

  /// `Success delete movie!`
  String get alertSuccessDeleteMovie {
    return Intl.message(
      'Success delete movie!',
      name: 'alertSuccessDeleteMovie',
      desc: '',
      args: [],
    );
  }

  /// `Success edit movie!`
  String get alertSuccessEditMovie {
    return Intl.message(
      'Success edit movie!',
      name: 'alertSuccessEditMovie',
      desc: '',
      args: [],
    );
  }

  /// `Ok`
  String get alertOk {
    return Intl.message(
      'Ok',
      name: 'alertOk',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to delete this data?`
  String get alertDelete {
    return Intl.message(
      'Are you sure you want to delete this data?',
      name: 'alertDelete',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to log out?`
  String get alertLogout {
    return Intl.message(
      'Are you sure you want to log out?',
      name: 'alertLogout',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to quit the app?`
  String get alertQuit {
    return Intl.message(
      'Are you sure you want to quit the app?',
      name: 'alertQuit',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to quit the game?`
  String get alertQuitGame {
    return Intl.message(
      'Are you sure you want to quit the game?',
      name: 'alertQuitGame',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get yes {
    return Intl.message(
      'Yes',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `Movies Collection`
  String get moviesCollection {
    return Intl.message(
      'Movies Collection',
      name: 'moviesCollection',
      desc: '',
      args: [],
    );
  }

  /// `Search by title`
  String get searchByTitle {
    return Intl.message(
      'Search by title',
      name: 'searchByTitle',
      desc: '',
      args: [],
    );
  }

  /// `Title`
  String get title {
    return Intl.message(
      'Title',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `Director`
  String get director {
    return Intl.message(
      'Director',
      name: 'director',
      desc: '',
      args: [],
    );
  }

  /// `Summary`
  String get summary {
    return Intl.message(
      'Summary',
      name: 'summary',
      desc: '',
      args: [],
    );
  }

  /// `Genres`
  String get genres {
    return Intl.message(
      'Genres',
      name: 'genres',
      desc: '',
      args: [],
    );
  }

  /// `No data`
  String get noData {
    return Intl.message(
      'No data',
      name: 'noData',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<I10n> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<I10n> load(Locale locale) => I10n.load(locale);
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
