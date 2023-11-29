library demo_native_app;

import 'package:flutter/material.dart';

class AlertBoxPJ {
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;
  static Future showCustomAlertBox({
    required BuildContext context,
    required Widget willDisplayWidget,
  }) {
    // assert(context != null, "context is null!!");
    // assert(willDisplayWidget != null, "willDisplayWidget is null!!");
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                willDisplayWidget,
                MaterialButton(
                  color: Colors.white30,
                  child: const Text('close alert'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            ),
            elevation: 10,
          );
        });
  }
}
