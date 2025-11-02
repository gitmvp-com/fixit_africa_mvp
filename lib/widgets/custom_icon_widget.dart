import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomIconWidget extends StatelessWidget {
  final String? svgPath;
  final IconData? iconData;
  final double? size;
  final Color? color;

  const CustomIconWidget({
    super.key,
    this.svgPath,
    this.iconData,
    this.size = 24,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    if (svgPath != null && svgPath!.isNotEmpty) {
      return SvgPicture.asset(
        svgPath!,
        width: size,
        height: size,
        colorFilter: color != null
            ? ColorFilter.mode(color!, BlendMode.srcIn)
            : null,
      );
    }

    return Icon(
      iconData ?? Icons.help_outline,
      size: size,
      color: color,
    );
  }
}
