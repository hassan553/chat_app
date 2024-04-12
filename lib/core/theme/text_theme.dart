import 'package:chat_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

const _fontFamily = 'Inter';

abstract class CustomTextStyle {
  static const TextStyle f50016 = TextStyle(
    color: AppColors.black,
    fontSize: 16,
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle f50018 = TextStyle(
    color: AppColors.black,
    fontSize: 18,
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle f50020 = TextStyle(
    color: AppColors.black,
    fontSize: 20,
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle f60030 = TextStyle(
    color: Colors.black,
    fontSize: 30,
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle f40016 = TextStyle(
    color: Colors.black,
    fontSize: 16,
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle f40012 = TextStyle(
    color: AppColors.black,
    fontSize: 12,
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle f60012 = TextStyle(
    color: AppColors.primaryColor,
    fontSize: 12,
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w600,
  );
}
