import 'package:doc_doc/core/constants/app_images.dart';
import 'package:doc_doc/core/theme/app_styles.dart';
import 'package:doc_doc/core/widget/custom_button.dart';
import 'package:doc_doc/core/widget/custom_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
            Center(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Image.asset(AppImages.onboardingBackground),
                  Image.asset(AppImages.doctor),
                  Positioned.fill(
                    child: ShaderMask(
                      shaderCallback: (Rect bounds) {
                        return const LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.center,
                          colors: [Colors.transparent, Colors.white],
                          stops: [0.2, 1.0],
                        ).createShader(bounds);
                      },
                      blendMode: BlendMode.dstOut,
                      child: Container(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 30.h,
                    child: Text(
                      'Best Doctor\nAppointment App',
                      style: AppStyles.style30blueBold,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              "Manage and schedule all of your medical appointments easily with DocDoc to get a new experience.",
              style: AppStyles.style14grey,
              textAlign: TextAlign.center,
            ),
            CustomButton(
              title: 'Get Started',
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
