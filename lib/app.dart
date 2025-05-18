import 'package:flutter/material.dart';
import 'package:projrct1/MediaQuery.dart';
import 'package:projrct1/Module9Class3.dart';
import 'package:projrct1/Module_9_Class_2.dart';
import 'package:projrct1/Statefull_class.dart';
import 'package:projrct1/Todo_App.dart';
import 'package:projrct1/Widget/CityCard.dart';
import 'package:projrct1/class_2.dart';
import 'package:projrct1/loginPage.dart';
import 'Assignment_2.dart';
import 'Grid_View.dart';
import 'List_View.dart';
import 'main2.dart';
import 'class_1.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_ , child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'First Method',
          // You can use the library anywhere in the app even in theme

          home: child,
        );
      },
      child: const Test(),
    );
  }
}