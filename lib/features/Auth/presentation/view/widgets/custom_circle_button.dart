import 'package:doc_doc/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomCircleButton extends StatelessWidget {
  final String image;
  const CustomCircleButton({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 30,
      backgroundColor: AppColors.buttonGreyColor,
      child: SvgPicture.asset(image),
    );
  }
}
