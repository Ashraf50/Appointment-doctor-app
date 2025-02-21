import 'package:doc_doc/core/constants/app_images.dart';
import 'package:doc_doc/core/theme/app_styles.dart';
import 'package:doc_doc/core/widget/custom_button.dart';
import 'package:doc_doc/core/widget/custom_scaffold.dart';
import 'package:doc_doc/core/widget/custom_textfield.dart';
import 'package:doc_doc/features/Auth/presentation/view/widgets/checked_account.dart';
import 'package:doc_doc/features/Auth/presentation/view/widgets/custom_circle_button.dart';
import 'package:doc_doc/features/Auth/presentation/view/widgets/custom_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'or_divider.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

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
              'Create Account',
              style: AppStyles.style24blueBold,
            ),
            Text(
              "Sign up now and start exploring all that our app has to offer. We're excited to welcome you to our community!",
              style: AppStyles.style14grey,
            ),
            SizedBox(
              height: 35.h,
            ),
            CustomTextfield(
              hintText: "Email",
              controller: TextEditingController(),
            ),
            CustomTextfield(
              hintText: "Password",
              controller: TextEditingController(),
            ),
            CustomTextfield(
              hintText: "Phone",
              controller: TextEditingController(),
            ),
            CustomButton(
              title: "Create Account",
              onTap: () {},
            ),
            SizedBox(
              height: 40.h,
            ),
            const OrDivider(),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 30.w,
              children: const [
                CustomCircleButton(
                  image: AppImages.google,
                ),
                CustomCircleButton(
                  image: AppImages.facebook,
                ),
                CustomCircleButton(
                  image: AppImages.apple,
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            const CustomRichText(),
            SizedBox(
              height: 20.h,
            ),
            CheckedAccount(
              title: "Already have an account?",
              subTitle: "Sign In",
              onTap: () {
                context.push('/signIn');
              },
            ),
            SizedBox(
              height: 20.h,
            ),
          ],
        ),
      ),
    );
  }
}
