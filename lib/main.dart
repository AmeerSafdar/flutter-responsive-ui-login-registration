
import 'package:bila_fiver/SizeConfig.dart';
import 'package:bila_fiver/screen/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(
       MyApp(),
    );
    
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return GetMaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Poultry Farm',
              theme: ThemeData(primarySwatch: Colors.blue),
              home: RegisterScreen(),
              // home: DashBoardScreen(),
            );
          },
        );
      },
    );
  }
}
