import 'package:flutter/material.dart';
import 'package:restaurant_application/core/utils/constant.dart';
import '../../features/splash_view/presentation/views/splash_view.dart';
import 'navigator_to_page.dart';

Future<dynamic> showDialogToSuccess(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: const Text(
        'Success',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: kPrimaryColor,
        ),
      ),
      content: const Text('Please, login now to start'),
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
