import 'package:doc_doc/core/theme/app_styles.dart';
import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: Divider()),
        Text(
          " Or sign in with ",
          style: AppStyles.style14grey,
        ),
        const Expanded(child: Divider()),
      ],
    );
  }
}
