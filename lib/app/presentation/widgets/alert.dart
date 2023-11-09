import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/app/presentation/constants/text_style.dart';
import 'package:movie_app/generated/l10n.dart';

class Alert {
  static notify(context, title, body) {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text(
            title,
            style: cTextReg,
          ),
          content: Container(
            margin: const EdgeInsets.only(top: 16),
            child: Text(
              body,
              style: cTextReg,
            ),
          ),
          actions: <Widget>[
            CupertinoDialogAction(
              child: const Text(
                'Ok',
              ),
              onPressed: () {
                // context.pop();
              },
            ),
          ],
        );
      },
    );
  }

  static option({
    required BuildContext context,
    String title = '',
    String body = '',
    String? cancelText,
    String? positiveText,
    Color? cancelTextColor,
    Color? positiveTextColor,
    required Function positiveAction,
  }) {
    ThemeData themeData = Theme.of(context);
    I10n i10n = I10n.of(context);
    Color cancelColorValue = cancelTextColor ?? themeData.colorScheme.primary;
    Color positiveColorValue =
        positiveTextColor ?? themeData.colorScheme.primary;
    String cancelTextValue = cancelText ?? i10n.alertCancel;
    String positiveTextValue = positiveText ?? i10n.alertOk;

    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text(
            title,
            style: cTextBold,
          ),
          content: Container(
            margin: const EdgeInsets.only(top: 16),
            child: Text(
              body,
              style: cTextReg,
            ),
          ),
          actions: <Widget>[
            CupertinoDialogAction(
              child: Text(
                cancelTextValue,
                style: cTextReg.copyWith(
                  color: cancelColorValue,
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            CupertinoDialogAction(
              child: Text(
                positiveTextValue,
                style: cTextReg.copyWith(
                  color: positiveColorValue,
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
                positiveAction();
              },
            ),
          ],
        );
      },
    );
  }
}
