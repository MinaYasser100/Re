import 'package:flutter/material.dart';

Future<dynamic> bottomSheet(
    {required BuildContext context, required Widget widget}) {
  return showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (context) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: SizedBox(
        height: 570,
        width: double.infinity,
        child: widget,
      ),
    ),
  );
}
