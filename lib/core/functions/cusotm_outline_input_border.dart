import 'package:flutter/material.dart';
import 'package:restaurant_application/core/utils/constant.dart';

OutlineInputBorder customOutlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: const BorderSide(color: kLightGreyColor),
  );
}
