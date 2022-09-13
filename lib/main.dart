import 'package:demo_app_master/chose_app_sceen/chose_app_screen.dart';
import 'package:demo_app_master/social_media_1/welcome_screen/wellcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Demo project",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const ChoseAppScreen(),
      routes: {
        App1MainScreen.routeName: (context) => const App1MainScreen(),
      },
    );
  }
}
