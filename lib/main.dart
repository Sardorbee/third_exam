import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:third_exam/ui/app_routes.dart';
import 'package:third_exam/ui/home/home_page.dart';
import 'package:third_exam/ui/utils/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => AdaptiveTheme(
        light: AppTheme.lightTheme,
        dark: AppTheme.darkTheme,
        initial: AdaptiveThemeMode.light,
        builder: (theme, darkTheme) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: theme,
            initialRoute: RouteNames.homePage,
            onGenerateRoute: AppRoutes.generateRoute,
            darkTheme: darkTheme,
          );
        },
      ),
    );
  }
}
