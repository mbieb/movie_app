// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "alertCancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "alertConfirm": MessageLookupByLibrary.simpleMessage("Confirm"),
        "alertDelete": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to delete this data?"),
        "alertFailed": MessageLookupByLibrary.simpleMessage("Failed"),
        "alertLogout": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to log out?"),
        "alertNoConnection": MessageLookupByLibrary.simpleMessage(
            "No connection, please check your internet"),
        "alertOk": MessageLookupByLibrary.simpleMessage("Ok"),
        "alertQuit": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to quit the app?"),
        "alertQuitGame": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to quit the game?"),
        "alertSuccess": MessageLookupByLibrary.simpleMessage("Success"),
        "alertSuccessAddMovie":
            MessageLookupByLibrary.simpleMessage("Success add movie!"),
        "alertSuccessDeleteMovie":
            MessageLookupByLibrary.simpleMessage("Success delete movie!"),
        "alertSuccessEditMovie":
            MessageLookupByLibrary.simpleMessage("Success edit movie!"),
        "alertTimeOut":
            MessageLookupByLibrary.simpleMessage("Request time out"),
        "alertWarning": MessageLookupByLibrary.simpleMessage("Warning"),
        "appTitle": MessageLookupByLibrary.simpleMessage("Flutter Movie App"),
        "director": MessageLookupByLibrary.simpleMessage("Director"),
        "genres": MessageLookupByLibrary.simpleMessage("Genres"),
        "moviesCollection":
            MessageLookupByLibrary.simpleMessage("Movies Collection"),
        "noData": MessageLookupByLibrary.simpleMessage("No data"),
        "searchByTitle":
            MessageLookupByLibrary.simpleMessage("Search by title"),
        "summary": MessageLookupByLibrary.simpleMessage("Summary"),
        "title": MessageLookupByLibrary.simpleMessage("Title"),
        "yes": MessageLookupByLibrary.simpleMessage("Yes")
      };
}
