import 'package:flutter/material.dart';

/// Internal usage
final class DialogBase {
  DialogBase._();

  /// Show a general dialog with
  /// [builder] for the dialog

  static Future<T?> show<T>({
    required BuildContext context,
    required WidgetBuilder builder,
  }) async {
    return showDialog<T>(
      context: context,
      barrierDismissible: false,
      useSafeArea: false,
      builder: builder,
    );
  }
}
