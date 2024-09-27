import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ideas_tasks/constant/app_routes.dart';
import 'package:ideas_tasks/routes.dart';
import 'package:ideas_tasks/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.navigationMenuTask4,
      getPages: getPages,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
    );
  }
}
