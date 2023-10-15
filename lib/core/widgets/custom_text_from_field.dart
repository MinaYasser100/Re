import 'package:flutter/material.dart';
import 'package:restaurant_application/core/utils/constant.dart';
import '../functions/cusotm_outline_input_border.dart';

class CustomTextFromField extends StatelessWidget {
  const CustomTextFromField({
    super.key,
    required this.textFromName,
  });
  final String textFromName;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          textFromName,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            color: kLightGreyColor,
          ),
        ),
        const SizedBox(height: 8),
        TextFormField(
          decoration: InputDecoration(
            enabledBorder: customOutlineInputBorder(),
            focusedBorder: customOutlineInputBorder(),
          ),
        ),
      ],
    );
  }
}
