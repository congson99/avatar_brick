import 'dart:io';
import 'dart:typed_data';

import 'package:avatar_brick/src/base/constant.dart';
import 'package:avatar_brick/src/base/helper.dart';
import 'package:flutter/cupertino.dart';

class AvatarBrick extends StatelessWidget {
  const AvatarBrick({
    Key? key,
    this.image,
    this.size,
    this.radius,
    this.backgroundColor,
    this.imageBackgroundColor,
    this.border,
    this.boxShadows,
    this.isLoading,
    this.name,
    this.nameTextStyle,
    this.nameTextColor,
    this.abbreviationLength,
  })  : assert(name == null ||
            ((backgroundColor == null) == (nameTextColor == null))),
        assert((backgroundColor == null || nameTextColor == null) ||
            (backgroundColor != nameTextColor)),
        super(key: key);

  /// Style Params
  final Size? size;
  final Color? backgroundColor;
  final double? radius;
  final BoxBorder? border;
  final List<BoxShadow>? boxShadows;

  /// State Params
  final bool? isLoading;

  /// Image Params
  final Image? image;
  final Color? imageBackgroundColor;

  /// Name Params
  final String? name;
  final int? abbreviationLength;
  final Color? nameTextColor;
  final TextStyle? nameTextStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
              calculateBorderRadiusByAvatarSize(radius, size)),
          border: border,
          boxShadow: boxShadows ?? [],
          color: border?.bottom.color),
      child: ClipRRect(
        borderRadius:
            BorderRadius.circular(radius ?? getMaxSizeByAvatarSize(size)),
        child: SizedBox.fromSize(
          size: Size.fromRadius(getMaxSizeByAvatarSize(size) / 2),
          child: Container(
            alignment: Alignment.center,
            height: size?.height ?? defaultHeight,
            width: size?.width ?? defaultWeight,
            color: (image != null)
                ? (imageBackgroundColor ?? defaultImageBackgroundColor)
                : (backgroundColor ?? defaultBackgroundColor),
            child: buildAvatar(),
          ),
        ),
      ),
    );
  }

  Widget buildAvatar() {
    if (image != null) return image!;
    if (convertFullNameToAbbreviation(name, 1).isNotEmpty) {
      return Text(
        convertFullNameToAbbreviation(
          name,
          abbreviationLength ?? defaultAbbreviationLength,
        ),
        style: (nameTextStyle ?? defaultNameTextStyle(size))
            .copyWith(color: nameTextColor ?? defaultNameTextColor),
      );
    }
    if (isLoading == true) {
      return CupertinoActivityIndicator(
        radius: getMinSizeByAvatarSize(size) / 4,
        color: getContrastColor(backgroundColor ?? defaultBackgroundColor),
      );
    }
    return const SizedBox.shrink();
  }

  /// -------------------
  /// Special input image
  /// -------------------
  static AvatarBrick network({
    required String src,
    Size? size,
    double? radius,
    Color? backgroundColor,
    Color? imageBackgroundColor,
    BoxBorder? border,
    List<BoxShadow>? boxShadows,
    bool? isLoading,
    String? name,
    int? abbreviationLength,
    Color? nameTextColor,
    TextStyle? nameTextStyle,
    double? scale,
    BoxFit? fit,
    AlignmentGeometry? alignment,
  }) {
    final Image image = Image.network(
      src,
      height: size?.height ?? defaultHeight,
      width: size?.width ?? defaultWeight,
      scale: scale ?? 1,
      fit: fit ?? BoxFit.cover,
      alignment: alignment ?? Alignment.center,
    );
    return AvatarBrick(
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
    );
  }

  static AvatarBrick asset({
    required String src,
    Size? size,
    double? radius,
    Color? backgroundColor,
    Color? imageBackgroundColor,
    BoxBorder? border,
    List<BoxShadow>? boxShadows,
    bool? isLoading,
    String? name,
    int? abbreviationLength,
    Color? nameTextColor,
    TextStyle? nameTextStyle,
    double? scale,
    BoxFit? fit,
    AlignmentGeometry? alignment,
  }) {
    final Image image = Image.asset(
      src,
      height: size?.height ?? defaultHeight,
      width: size?.width ?? defaultWeight,
      scale: scale ?? 1,
      fit: fit ?? BoxFit.cover,
      alignment: alignment ?? Alignment.center,
    );
    return AvatarBrick(
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
    );
  }

  static AvatarBrick file({
    required File src,
    Size? size,
    double? radius,
    Color? backgroundColor,
    Color? imageBackgroundColor,
    BoxBorder? border,
    List<BoxShadow>? boxShadows,
    bool? isLoading,
    String? name,
    int? abbreviationLength,
    Color? nameTextColor,
    TextStyle? nameTextStyle,
    double? scale,
    BoxFit? fit,
    AlignmentGeometry? alignment,
  }) {
    final Image image = Image.file(
      src,
      height: size?.height ?? defaultHeight,
      width: size?.width ?? defaultWeight,
      scale: scale ?? 1,
      fit: fit ?? BoxFit.cover,
      alignment: alignment ?? Alignment.center,
    );
    return AvatarBrick(
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
    );
  }

  static AvatarBrick memory({
    required Uint8List src,
    Size? size,
    double? radius,
    Color? backgroundColor,
    Color? imageBackgroundColor,
    BoxBorder? border,
    List<BoxShadow>? boxShadows,
    bool? isLoading,
    String? name,
    int? abbreviationLength,
    Color? nameTextColor,
    TextStyle? nameTextStyle,
    double? scale,
    BoxFit? fit,
    AlignmentGeometry? alignment,
  }) {
    final Image image = Image.memory(
      src,
      height: size?.height ?? defaultHeight,
      width: size?.width ?? defaultWeight,
      scale: scale ?? 1,
      fit: fit ?? BoxFit.cover,
      alignment: alignment ?? Alignment.center,
    );
    return AvatarBrick(
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
    );
  }
}
