import 'package:bookly/constants.dart';
import 'package:bookly/features/Splash/presentation/views/Splash_View.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bookly/core/utils/app_router.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
  routerConfig: AppRouter.router,
  debugShowCheckedModeBanner: false,
  theme: ThemeData.dark().copyWith(
  brightness: Brightness.dark,
  primaryColor: kPrimaryColor,
  scaffoldBackgroundColor: kPrimaryColor,
  canvasColor: kPrimaryColor,
  colorScheme: ThemeData.dark().colorScheme.copyWith(
    surface: kPrimaryColor,
  ),
  textTheme: GoogleFonts.montserratTextTheme(
    ThemeData.dark().textTheme,
  ).apply(
    bodyColor: Colors.white,
    displayColor: Colors.white,
  ),
),
  builder: (context, child) {
    return DefaultTextStyle.merge(
      style: const TextStyle(
        color: Colors.white,
        decoration: TextDecoration.none,
      ),
      child: child!,
    );
  },
);
  }
}
