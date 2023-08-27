import 'dart:math';

import 'package:avatar_brick/src/base/constant.dart';
import 'package:flutter/material.dart';

String convertFullNameToAbbreviation(String? name, int length) {
  if (name == null) return "";
  String pName = name.trim();
  if (pName.isEmpty) return "";
  String result = pName[0];
  for (int i = 0; i < pName.length - 1; i++) {
    if (pName[i] == " " && pName[i + 1] != " ") {
      result += pName[i + 1];
    }
  }
  if (result.length > length) result = result.substring(0, length);
  return result.toUpperCase();
}

double getMinSizeByAvatarSize(Size? size) {
  double height = size?.height ?? defaultHeight;
  double width = size?.width ?? defaultWeight;
  double minAvatarSize = min(height, width);
  return minAvatarSize;
}

double getMaxSizeByAvatarSize(Size? size) {
  double height = size?.height ?? defaultHeight;
  double width = size?.width ?? defaultWeight;
  double maxAvatarSize = max(height, width);
  return maxAvatarSize;
}

double calculateTextFontSizeByAvatarSize(Size? avatarSize) {
  return getMinSizeByAvatarSize(avatarSize) * 0.4;
}

double reCalculateBorderRadiusByAvatarSize(double? radius, Size? size) {
  if (radius == null) return getMaxSizeByAvatarSize(size);
  return radius * 1.12;
}

Color getContrastColorByRootColor(Color color) {
  double luminance =
      (0.299 * color.red + 0.587 * color.green + 0.114 * color.blue) / 255;
  if (luminance > 0.5) {
    return Color.lerp(Colors.black, Colors.grey, (luminance - 0.5) * 2)!;
  }
  return Color.lerp(Colors.grey, Colors.white, luminance * 2)!;
}
