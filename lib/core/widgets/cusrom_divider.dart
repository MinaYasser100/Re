import 'package:flutter/material.dart';
import 'package:restaurant_application/core/utils/constant.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      width: MediaQuery.of(context).size.width * 0.4,
      color: kDividerColor,
    );
  }
}
