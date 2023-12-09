import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../screens/splash/splash_screen.dart';

class AppRoot extends StatelessWidget{
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Unidue',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 91, 137, 255)),
        useMaterial3: true,
        textTheme: GoogleFonts.poppinsTextTheme()
      ),
      home: const SplashScreen(),
    );
  }


}