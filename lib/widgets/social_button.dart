import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_responsive_ui/pallets.dart';

class SocialButton extends StatelessWidget {
  final String iconPath;
  final String label;
  final double horizontalPadding;
  final VoidCallback onPressed;
  const SocialButton({
    super.key,
    required this.iconPath,
    required this.label,
    required this.onPressed,
    this.horizontalPadding = 100,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,
      label: Text(
        label,
        style: const TextStyle(
          color: Pallete.whiteColor,
          fontSize: 17,
        ),
      ),
      icon: SvgPicture.asset(
        iconPath,
        width: 25,
        colorFilter: const ColorFilter.mode(
          Pallete.whiteColor,
          BlendMode.srcIn,
        ),
      ),
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(
          vertical: 30,
          horizontal: horizontalPadding,
        ),
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            color: Pallete.borderColor,
            width: 3,
          ),
          borderRadius: BorderRadiusDirectional.circular(10),
        ),
      ),
    );
  }
}
