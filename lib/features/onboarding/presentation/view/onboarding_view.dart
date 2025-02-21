import 'package:doc_doc/core/constants/app_images.dart';
import 'package:doc_doc/core/theme/app_styles.dart';
import 'package:doc_doc/core/widget/custom_button.dart';
import 'package:doc_doc/core/widget/custom_scaffold.dart';
import 'package:doc_doc/features/onboarding/presentation/view/widgets/custom_center_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AppImages.logo,
                  height: 33.h,
                ),
                SizedBox(
                  width: 5.w,
                ),
                Text(
                  'DocDoc',
                  style: AppStyles.style20blackBold,
                ),
              ],
            ),
            SizedBox(
              height: 40.h,
            ),
            const CustomCenterContent(),
            Text(
              "Manage and schedule all of your medical appointments easily with DocDoc to get a new experience.",
              style: AppStyles.style14grey,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomButton(
              title: 'Get Started',
              onTap: () {
                context.push('/signIn');
              },
            )
          ],
        ),
      ),
    );
  }
}
