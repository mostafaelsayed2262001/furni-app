import 'package:flutter/material.dart';
import 'package:furni_app/Features/home/presentation/views/home_view.dart';
import 'package:furni_app/core/utils/app_router.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientation, deviceType) {
        return MaterialApp.router(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.cyan
            ),

          ),
          routerConfig: AppRouter.router,
        );
      }
    );
  }
}
