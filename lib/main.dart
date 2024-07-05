import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_web/core/Helpers/service_locator.dart';
import 'package:flutter_web/core/utils/app_colors.dart';
import 'package:flutter_web/features/home/presentation/views/screens/home_screen_mobile.dart';
import 'package:flutter_web/features/home/presentation/views/screens/home_screen_web.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_web/features/products/domain/use_case/get_products_use_case.dart';
import 'features/products/data/data_source/remote_data_source_use_case.dart';
import 'firebase_options.dart';
void main() async{
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,

  );
  ServiceLocator.init();
 sl<GetProductsUseCase>().call();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
 
 
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(690, 360),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData().copyWith(
            scaffoldBackgroundColor: AppColors.backgroundColor,
          ),
          debugShowCheckedModeBanner: false,
          title: 'Flutter web',
          home: const ResponsiveScreen(),
        );
      },
    );
  }
}

class ResponsiveScreen extends StatelessWidget {
  const ResponsiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 600) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(
              textScaleFactor: 1.25,
            ),
            child: const HomeScreen(),
          );
        } else {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(
              textScaleFactor: 0.6,
            ),
            child: const HomeScreenMobile(),
          );
        }
      },
    );
  }
}
