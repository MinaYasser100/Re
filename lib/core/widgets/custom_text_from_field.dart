import 'package:flutter/material.dart';
import 'package:restaurant_application/core/utils/constant.dart';
import '../functions/cusotm_outline_input_border.dart';

class CustomTextFromField extends StatelessWidget {
  const CustomTextFromField({
    super.key,
    required this.textFromName,
    this.validator,
    required this.controller,
  });
  final String textFromName;
  final String? Function(String?)? validator;
  final TextEditingController controller;
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
          validator: validator,
          decoration: InputDecoration(
            enabledBorder: customOutlineInputBorder(),
            focusedBorder: customOutlineInputBorder(),
            errorBorder: customOutlineInputBorder(),
            disabledBorder: customOutlineInputBorder(),
            focusedErrorBorder: customOutlineInputBorder(),
          ),
        ),
      ],
    );
  }
}
