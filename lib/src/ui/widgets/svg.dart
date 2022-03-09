import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SVG extends StatelessWidget {
  final String svgType;
  final String src;
  final double? width;
  final double? height;
  final Color? color;

  const SVG.asset(
    this.src, {
    Key? key,
    this.width,
    this.height,
    this.color,
    this.svgType = 'ASSET',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (svgType) {
      case 'ASSET':
        return buildAsset(context);
      default:
        throw 'Type not provided';
    }
  }

  Widget buildAsset(BuildContext context) {
    return SvgPicture.asset(
      src,
      width: width ?? 28,
      height: height ?? 28,
      color: color ?? Colors.white,
    );
  }
}
