import 'package:doc_doc/core/theme/app_styles.dart';
import 'package:doc_doc/core/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/widget/custom_scaffold.dart';
import '../../../../../core/widget/custom_textfield.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  const ForgetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ListView(
          children: [
            SizedBox(
              height: 50.h,
            ),
            Text(
              'Welcome Back',
              style: AppStyles.style24blueBold,
            ),
            Text(
              "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
              style: AppStyles.style14grey,
            ),
            SizedBox(
              height: 35.h,
            ),
            CustomTextfield(
              hintText: "Email",
              controller: TextEditingController(),
            ),
            SizedBox(
              height: 20.h,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
        child: CustomButton(
          title: "Reset Password",
          onTap: () {},
        ),
      ),
    );
  }
}
