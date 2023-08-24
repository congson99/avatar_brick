import 'package:avatar_brick/src/base/helper.dart';
import 'package:flutter/material.dart';

const double defaultHeight = 120;
const double defaultWeight = 120;
const Color defaultBackgroundColor = Colors.grey;
const int defaultAbbreviationLength = 2;
const Color defaultNameTextColor = Colors.white;

TextStyle defaultNameTextStyle(Size? avatarSize) {
  return TextStyle(
    fontSize: calculateTextFontSizeByAvatarSize(avatarSize),
    fontWeight: FontWeight.w600,
    overflow: TextOverflow.ellipsis,
  );
}
