import 'package:doc_doc/core/theme/app_styles.dart';
import 'package:flutter/material.dart';

class CustomRichText extends StatelessWidget {
  const CustomRichText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: AppStyles.style14grey,
        children: [
          const TextSpan(text: "By logging, you agree to our "),
          TextSpan(
            text: "Terms & Conditions",
            style: AppStyles.style14black,
          ),
          const TextSpan(text: " and "),
          TextSpan(
            text: "Privacy Policy",
            style: AppStyles.style14black,
          ),
          const TextSpan(text: "."),
        ],
      ),
    );
  }
}
