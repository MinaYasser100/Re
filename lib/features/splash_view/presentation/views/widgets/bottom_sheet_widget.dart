import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../manager/splash_cubit.dart';
import '../../manager/splash_state.dart';
import 'bottom_sheet_button.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashCubit, SplashStates>(builder: (context, state) {
      return Column(
        children: [
          SizedBox(
            height: 50,
            child: ListView.builder(
              itemCount: 2,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => BottomSheetButton(
                index: index,
                text: BlocProvider.of<SplashCubit>(context).nameText[index],
                textColor: BlocProvider.of<SplashCubit>(context)
                    .changeTextColor(index),
                onPressed: () {
                  BlocProvider.of<SplashCubit>(context).changeIndex(index);
                },
              ),
            ),
          ),
          BlocProvider.of<SplashCubit>(context)
              .screens[BlocProvider.of<SplashCubit>(context).currentIndex],
        ],
      );
    });
  }
}
