import 'package:flutter/material.dart';

void navigatorToPage({required BuildContext context, required Widget widget}) {
  Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ));
}
