import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../screens/splash/splash_screen.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = ColorScheme.fromSeed(
      seedColor: const Color.fromARGB(255, 91, 137, 255),
      secondary: const Color.fromARGB(200, 22, 178, 23),
      tertiary: const Color.fromARGB(255, 91, 137, 255),
    );

    return MaterialApp(
      title: 'Unidue',
      theme: ThemeData(
        colorScheme: colorScheme,
        useMaterial3: true,
        textTheme: GoogleFonts.poppinsTextTheme(),
        inputDecorationTheme: InputDecorationTheme(
          floatingLabelStyle: TextStyle(
            color: colorScheme.primary,
          )
        ),

      ),
      home: const SplashScreen(),
    );
  }
}
