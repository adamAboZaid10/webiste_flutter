import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:petrolex/core/utils/routes.dart';
import 'package:petrolex/core/widgets/custom_button_app_bar_widget.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color:Colors.black,
      height: 40.sp,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0.sp),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/image/logo_company.png',
              fit: BoxFit.contain,
              height: 60.sp,
              width: 60.sp,
            ),
            const Spacer(),
            CustomButtonAppBarWidget(
              onTap: () {
                context.go(AppRoutes.home);
              },
              title: 'Home',
            ),
            CustomButtonAppBarWidget(
              onTap: () {
                context.go(AppRoutes.products);
              },
              title: 'Products',
            ),
            CustomButtonAppBarWidget(
              onTap: () {
                context.go(AppRoutes.aboutUs);
              },
              title: 'About us',
            ),

            CustomButtonAppBarWidget(
              onTap: () {
                context.go(AppRoutes.contactUs);
              },
              title: 'Contact us',
            ),
          ],
        ),
      ),
    );
  }
}

class CustomAppBarMobile extends StatelessWidget {
  const CustomAppBarMobile({
    super.key,
    required this.onTap,
  });

  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: 90.sp,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0.sp),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.all(8.0.sp),
              child: Image.asset(
                'assets/image/logo_company.png',
                fit: BoxFit.contain,
                height: 120.sp,
                width: 120.sp,
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: onTap,
              icon: Icon(
                Icons.menu,
                color: Colors.white,
                size: 60.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomItemMobileAppBar extends StatelessWidget {
  const CustomItemMobileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 60,
      right: 10,
      child: Container(
        color: Colors.black,
        width: 250.sp,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0.sp, vertical: 10.0.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomButtonMobileAppBarWidget(
                onTap: () {
                  context.go(AppRoutes.home);
                },
                title: 'Home',
                fontSize: 50,
              ),
              CustomButtonMobileAppBarWidget(
                onTap: () {
                  context.go(AppRoutes.products);
                },
                title: 'Products',
                fontSize: 50,
              ),
              CustomButtonMobileAppBarWidget(
                onTap: () {
                  context.go(AppRoutes.aboutUs);
                },
                title: 'About us',
                fontSize: 50,
              ),

              CustomButtonMobileAppBarWidget(
                onTap: () {
                  context.go(AppRoutes.contactUs);
                },
                title: 'Contact us',
                fontSize: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}