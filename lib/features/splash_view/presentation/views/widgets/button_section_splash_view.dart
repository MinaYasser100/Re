import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/functions/bottom_sheet.dart';
import '../../../../../core/utils/constant.dart';
import '../../../../../core/widgets/custom_button_app.dart';
import '../../manager/splash_cubit.dart';
import '../../manager/splash_state.dart';
import 'bottom_sheet_widget.dart';

class ButtonsSectionSplashView extends StatelessWidget {
  const ButtonsSectionSplashView({
    super.key,
    required this.mediaQuerySize,
  });

  final Size mediaQuerySize;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashCubit, SplashStates>(builder: (context, state) {
      return Column(
        children: [
          CustomButtonApp(
            width: mediaQuerySize.width * 0.7,
            text: 'Create Account',
            onPressed: () {
              bottomSheet(
                context: context,
                widget: const BottomSheetWidget(),
              );
              BlocProvider.of<SplashCubit>(context).currentIndex = 0;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          CustomButtonApp(
            width: mediaQuerySize.width * 0.7,
            text: 'Login',
            onPressed: () {
              bottomSheet(
                context: context,
                widget: const BottomSheetWidget(),
              );
              BlocProvider.of<SplashCubit>(context).currentIndex = 1;
            },
            buttonColor: const Color(0xFFd1fae5),
            textColor: kPrimaryColor,
          ),
        ],
      );
    });
  }
}
