import 'package:doc_doc/core/constants/app_images.dart';
import 'package:doc_doc/core/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCenterContent extends StatelessWidget {
  const CustomCenterContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
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
    );
  }
}
