import 'package:doc_doc/core/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheckedAccount extends StatelessWidget {
  final String title;
  final String subTitle;
  final void Function() onTap;
  const CheckedAccount({
    super.key,
    required this.title,
    required this.subTitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: AppStyles.style16black,
        ),
        SizedBox(
          width: 5.w,
        ),
        InkWell(
          focusColor: Colors.transparent,
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          onTap: onTap,
          child: Text(
            subTitle,
            style: AppStyles.style12blueBold,
          ),
        )
      ],
    );
  }
}
