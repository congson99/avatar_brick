import 'package:avatar_brick/src/base/constant.dart';
import 'package:avatar_brick/src/base/helper.dart';
import 'package:flutter/cupertino.dart';

class BaseAvatarBrick extends StatelessWidget {
  const BaseAvatarBrick({
    Key? key,
    required this.image,
    required this.size,
    required this.radius,
    required this.backgroundColor,
    required this.imageBackgroundColor,
    required this.border,
    required this.boxShadows,
    required this.isLoading,
    required this.name,
    required this.nameTextStyle,
    required this.nameTextColor,
    required this.maxAbbreviationLength,
    required this.icon,
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
  final int? maxAbbreviationLength;
  final Color? nameTextColor;
  final TextStyle? nameTextStyle;

  /// Icon Params
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
              reCalculateBorderRadiusByAvatarSize(radius, size)),
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
          maxAbbreviationLength ?? defaultAbbreviationLength,
        ),
        style: (nameTextStyle ?? defaultNameTextStyle(size))
            .copyWith(color: nameTextColor ?? defaultNameTextColor),
      );
    }
    if (icon != null) {
      return icon!;
    }
    if (isLoading == true) {
      return CupertinoActivityIndicator(
        radius: getMinSizeByAvatarSize(size) / 4,
        color: getContrastColorByRootColor(
            backgroundColor ?? defaultBackgroundColor),
      );
    }
    return const SizedBox.shrink();
  }
}
