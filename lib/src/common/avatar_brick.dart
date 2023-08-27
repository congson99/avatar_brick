import 'dart:io';
import 'dart:typed_data';

import 'package:avatar_brick/src/base/base_avatar_brick.dart';
import 'package:avatar_brick/src/base/constant.dart';
import 'package:flutter/cupertino.dart';

class AvatarBrick extends BaseAvatarBrick {
  const AvatarBrick({
    Key? key,
    Image? image,
    Size? size,
    double? radius,
    Color? backgroundColor,
    Color? imageBackgroundColor,
    BoxBorder? border,
    List<BoxShadow>? boxShadows,
    bool? isLoading,
    String? name,
    TextStyle? nameTextStyle,
    Color? nameTextColor,
    int? maxAbbreviationLength,
    Icon? icon,
  }) : super(
          key: key,
          image: image,
          size: size,
          radius: radius,
          backgroundColor: backgroundColor,
          imageBackgroundColor: imageBackgroundColor,
          border: border,
          boxShadows: boxShadows,
          isLoading: isLoading,
          name: name,
          nameTextStyle: nameTextStyle,
          nameTextColor: nameTextColor,
          maxAbbreviationLength: maxAbbreviationLength,
          icon: icon,
        );

  /// -------------------
  /// Special input image
  /// -------------------
  static BaseAvatarBrick network({
    String? src,
    bool? alwaysRefreshSrc,
    Size? size,
    double? radius,
    Color? backgroundColor,
    Color? imageBackgroundColor,
    BoxBorder? border,
    List<BoxShadow>? boxShadows,
    bool? isLoading,
    String? name,
    int? maxAbbreviationLength,
    Color? nameTextColor,
    TextStyle? nameTextStyle,
    double? scale,
    BoxFit? fit,
    AlignmentGeometry? alignment,
    Icon? icon,
  }) {
    final Image? image = src != null
        ? Image.network(
            src +
                (alwaysRefreshSrc == true
                    ? "?${DateTime.now().millisecondsSinceEpoch}"
                    : ""),
            height: size?.height ?? defaultHeight,
            width: size?.width ?? defaultWeight,
            scale: scale ?? 1,
            fit: fit ?? BoxFit.cover,
            alignment: alignment ?? Alignment.center,
          )
        : null;
    return BaseAvatarBrick(
      image: image,
      size: size,
      radius: radius,
      backgroundColor: backgroundColor,
      imageBackgroundColor: imageBackgroundColor,
      border: border,
      boxShadows: boxShadows,
      isLoading: isLoading,
      name: name,
      nameTextColor: nameTextColor,
      nameTextStyle: nameTextStyle,
      maxAbbreviationLength: maxAbbreviationLength,
      icon: icon,
    );
  }

  static BaseAvatarBrick asset({
    String? src,
    Size? size,
    double? radius,
    Color? backgroundColor,
    Color? imageBackgroundColor,
    BoxBorder? border,
    List<BoxShadow>? boxShadows,
    bool? isLoading,
    String? name,
    int? maxAbbreviationLength,
    Color? nameTextColor,
    TextStyle? nameTextStyle,
    double? scale,
    BoxFit? fit,
    AlignmentGeometry? alignment,
    Icon? icon,
  }) {
    final Image? image = src != null
        ? Image.asset(
            src,
            height: size?.height ?? defaultHeight,
            width: size?.width ?? defaultWeight,
            scale: scale ?? 1,
            fit: fit ?? BoxFit.cover,
            alignment: alignment ?? Alignment.center,
          )
        : null;
    return BaseAvatarBrick(
      image: image,
      size: size,
      radius: radius,
      backgroundColor: backgroundColor,
      imageBackgroundColor: imageBackgroundColor,
      border: border,
      boxShadows: boxShadows,
      isLoading: isLoading,
      name: name,
      nameTextColor: nameTextColor,
      nameTextStyle: nameTextStyle,
      maxAbbreviationLength: maxAbbreviationLength,
      icon: icon,
    );
  }

  static BaseAvatarBrick file({
    File? src,
    Size? size,
    double? radius,
    Color? backgroundColor,
    Color? imageBackgroundColor,
    BoxBorder? border,
    List<BoxShadow>? boxShadows,
    bool? isLoading,
    String? name,
    int? maxAbbreviationLength,
    Color? nameTextColor,
    TextStyle? nameTextStyle,
    double? scale,
    BoxFit? fit,
    AlignmentGeometry? alignment,
    Icon? icon,
  }) {
    final Image? image = src != null
        ? Image.file(
            src,
            height: size?.height ?? defaultHeight,
            width: size?.width ?? defaultWeight,
            scale: scale ?? 1,
            fit: fit ?? BoxFit.cover,
            alignment: alignment ?? Alignment.center,
          )
        : null;
    return BaseAvatarBrick(
      image: image,
      size: size,
      radius: radius,
      backgroundColor: backgroundColor,
      imageBackgroundColor: imageBackgroundColor,
      border: border,
      boxShadows: boxShadows,
      isLoading: isLoading,
      name: name,
      nameTextColor: nameTextColor,
      nameTextStyle: nameTextStyle,
      maxAbbreviationLength: maxAbbreviationLength,
      icon: icon,
    );
  }

  static BaseAvatarBrick memory({
    Uint8List? src,
    Size? size,
    double? radius,
    Color? backgroundColor,
    Color? imageBackgroundColor,
    BoxBorder? border,
    List<BoxShadow>? boxShadows,
    bool? isLoading,
    String? name,
    int? maxAbbreviationLength,
    Color? nameTextColor,
    TextStyle? nameTextStyle,
    double? scale,
    BoxFit? fit,
    AlignmentGeometry? alignment,
    Icon? icon,
  }) {
    final Image? image = src != null
        ? Image.memory(
            src,
            height: size?.height ?? defaultHeight,
            width: size?.width ?? defaultWeight,
            scale: scale ?? 1,
            fit: fit ?? BoxFit.cover,
            alignment: alignment ?? Alignment.center,
          )
        : null;
    return BaseAvatarBrick(
      image: image,
      size: size,
      radius: radius,
      backgroundColor: backgroundColor,
      imageBackgroundColor: imageBackgroundColor,
      border: border,
      boxShadows: boxShadows,
      isLoading: isLoading,
      name: name,
      nameTextColor: nameTextColor,
      nameTextStyle: nameTextStyle,
      maxAbbreviationLength: maxAbbreviationLength,
      icon: icon,
    );
  }
}
