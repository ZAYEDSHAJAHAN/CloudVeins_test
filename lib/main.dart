import 'package:cloudvein_tech/regstraion/Regstration_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        title: 'cloudvein',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Registrationpage(),
      );
    });
  }
}
