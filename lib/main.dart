import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'home.dart';
import 'android_screen/android_screen.dart';
import 'Desktop_screen/desktop_screen.dart';
import 'tablet_screen/tablet_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(
          androidScreen: const AndroidScreen(),
          tabletScreen: const TabletScreen(),
          desktopScreen: const DesktopScreen(),
        ),
      ),
    );
  }
}
