import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_application/core/utils/constant.dart';
import 'package:restaurant_application/core/utils/styles.dart';
import '../../manager/splash_cubit.dart';

class BottomSheetButton extends StatelessWidget {
  const BottomSheetButton({
    super.key,
    required this.text,
    this.onPressed,
    required this.textColor,
    required this.index,
  });
  final String text;
  final void Function()? onPressed;
  final Color textColor;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.42,
          child: TextButton(
            onPressed: onPressed,
            child: Text(
              text,
              style: Styles.textStyle16.copyWith(color: textColor),
            ),
          ),
        ),
        if (index == BlocProvider.of<SplashCubit>(context).currentIndex)
          Container(
            height: 2,
            width: 50,
            color: kPrimaryColor,
          ),
      ],
    );
  }
}
