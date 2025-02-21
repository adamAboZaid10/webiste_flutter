import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petrolex/core/utils/app_colors.dart';

class AboutUsDetails extends StatelessWidget {
  const AboutUsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0.sp),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0.r)),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.sp, vertical: 12.0.sp),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Our Values',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    letterSpacing: 1.2,
                    shadows: [
                      Shadow(
                        blurRadius: 10.0,
                        color: Colors.white.withOpacity(0.5),
                        offset: const Offset(2.0, 2.0),
                      ),
                    ],
                    fontFamily:
                        'PlaywrightItaliaModerna', // Use a font that looks elegant
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              Center(
                child: Text(
                  'Our Values define the relationship we aim to have with our partners and clients as well as our focus on the human development of our teams',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    letterSpacing: 1.2,
                    shadows: [
                      Shadow(
                        blurRadius: 10.0,
                        color: Colors.black.withOpacity(0.5),
                        offset: const Offset(2.0, 2.0),
                      ),
                    ],
                    fontFamily:
                        'PlaywrightItaliaModerna', // Use a font that looks elegant
                  ),
                ),
              ),
              SizedBox(height: 24.h),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AboutUsDetailsItemWidget(title: 'Excellence'),
                  AboutUsDetailsItemWidget(title: 'Quality'),
                  AboutUsDetailsItemWidget(title: 'Loyalty'),
                  AboutUsDetailsItemWidget(title: 'Collaboration'),
                ],
              ),
              SizedBox(height: 12.h),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AboutUsDetailsItemWidget(title: 'Reliability'),
                  AboutUsDetailsItemWidget(title: 'Commitment'),
                  AboutUsDetailsItemWidget(title: 'Safety'),
                  AboutUsDetailsItemWidget(title: 'Integrity'),
                ],
              ),
              SizedBox(height: 12.h),
              // Additional content can be added here
            ],
          ),
        ),
      ),
    );
  }
}

class AboutUsMobileDetails extends StatelessWidget {
  const AboutUsMobileDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0.sp),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0.r)),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.sp, vertical: 12.0.sp),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Our Values',
                  style: TextStyle(
                    fontSize: 40.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    letterSpacing: 1.2,
                    shadows: [
                      Shadow(
                        blurRadius: 10.0,
                        color: Colors.white.withOpacity(0.5),
                        offset: const Offset(2.0, 2.0),
                      ),
                    ],
                    fontFamily:
                        'PlaywrightItaliaModerna', // Use a font that looks elegant
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              Center(
                child: Text(
                  'Our Values define the relationship we aim to have with our partners and clients as well as our focus on the human development of our teams',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    letterSpacing: 1.2,
                    shadows: [
                      Shadow(
                        blurRadius: 10.0,
                        color: Colors.black.withOpacity(0.5),
                        offset: const Offset(2.0, 2.0),
                      ),
                    ],
                    fontFamily:
                        'PlaywrightItaliaModerna', // Use a font that looks elegant
                  ),
                ),
              ),
              SizedBox(height: 24.h),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AboutUsDetailsItemWidget(
                    title: 'Excellence',
                    heightContainer: 30,
                    widthContainer: 120,
                    fontSize: 20,
                  ),
                  AboutUsDetailsItemWidget(
                    title: 'Quality',
                    heightContainer: 30,
                    widthContainer: 120,
                    fontSize: 20,
                  ),
                  AboutUsDetailsItemWidget(
                    title: 'Loyalty',
                    heightContainer: 30,
                    widthContainer: 120,
                    fontSize: 20,
                  ),
                  AboutUsDetailsItemWidget(
                    title: 'Collaboration',
                    heightContainer: 30,
                    widthContainer: 120,
                    fontSize: 20,
                  ),
                ],
              ),
              SizedBox(height: 12.h),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AboutUsDetailsItemWidget(
                    title: 'Reliability',
                    heightContainer: 30,
                    widthContainer: 120,
                    fontSize: 20,
                  ),
                  AboutUsDetailsItemWidget(
                    title: 'Commitment',
                    heightContainer: 30,
                    widthContainer: 120,
                    fontSize: 20,
                  ),
                  AboutUsDetailsItemWidget(
                    title: 'Safety',
                    heightContainer: 30,
                    widthContainer: 120,
                    fontSize: 20,
                  ),
                  AboutUsDetailsItemWidget(
                    title: 'Integrity',
                    heightContainer: 30,
                    widthContainer: 120,
                    fontSize: 20,
                  ),
                ],
              ),
              SizedBox(height: 12.h),
              // Additional content can be added here
            ],
          ),
        ),
      ),
    );
  }
}

class AboutUsDetailsItemWidget extends StatelessWidget {
  const AboutUsDetailsItemWidget({
    super.key,
    required this.title,
    this.heightContainer = 20,
    this.widthContainer = 90,
    this.fontSize = 10,
  });

  final String title;
  final double heightContainer;

  final double widthContainer;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: heightContainer.sp,
      width: widthContainer.sp,
      decoration: BoxDecoration(
        color: AppColors.backgroundColor,
        borderRadius: BorderRadius.circular(6.0.r),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            fontSize: fontSize.sp,
          ),
        ),
      ),
    );
  }
}
