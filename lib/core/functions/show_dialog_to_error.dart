import 'package:flutter/material.dart';
import 'package:restaurant_application/core/utils/constant.dart';
import '../../features/splash_view/presentation/views/splash_view.dart';
import 'navigator_to_page.dart';

Future<dynamic> showDialogToError(BuildContext buildContext,
    {required String text}) {
  return showDialog(
    context: buildContext,
    builder: (context) => AlertDialog(
      title: const Text(
        'Error',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: kPrimaryColor,
        ),
      ),
      content: Text(text),
      actions: [
        IconButton(
          onPressed: () {
            navigatorToPage(context: context, widget: const SplashView());
          },
          icon: const Icon(
            Icons.check_circle_outline_outlined,
            color: kPrimaryColor,
          ),
        ),
      ],
    ),
  );
}
