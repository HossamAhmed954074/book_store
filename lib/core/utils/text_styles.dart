import 'package:book_store/constants.dart';
import 'package:flutter/material.dart';

abstract class TextStyles {
  static const textStyle18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );

  static const textStyle20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.normal,
    fontFamily: kGtsectraFont,
  );

  static const textStyle14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    fontFamily: kMontserratFont,
  );
  static const textStyle16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    fontFamily: kGilroyFontBold,
  );

  static final textStyle30 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w600,
    fontFamily: kGtsectraFontBold,
  );
}
