import 'package:bookly/features/Splash/presentation/views/Splash_View.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(

      home: SplashView(),
    );
  }
}
