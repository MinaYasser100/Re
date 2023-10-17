import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_application/core/utils/constant.dart';
import '../../manager/splash_cubit.dart';
import '../../manager/splash_state.dart';
import 'bottom_sheet_button.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashCubit(),
      child: BlocBuilder<SplashCubit, SplashStates>(builder: (context, state) {
        return SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50,
                child: ListView.builder(
                  itemCount: 2,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => BottomSheetButton(
                    index: index,
                    text: BlocProvider.of<SplashCubit>(context).nameText[index],
                    textColor:
                        BlocProvider.of<SplashCubit>(context).currentIndex ==
                                index
                            ? kPrimaryColor
                            : kLightGreyColor,
                    onPressed: () {
                      BlocProvider.of<SplashCubit>(context).changeIndex(index);
                    },
                  ),
                ),
              ),
              BlocProvider.of<SplashCubit>(context)
                  .screens[BlocProvider.of<SplashCubit>(context).currentIndex],
              const SizedBox(
                height: 200,
              ),
            ],
          ),
        );
      }),
    );
  }
}
