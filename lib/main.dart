import 'package:flutter/material.dart';
import 'package:mytime/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF3F51B5),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: const Color(0xFFFF4081),
        ),
        scaffoldBackgroundColor: const Color(0xFFF5F5F5),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Color(0xFF212121)),
          bodyMedium: TextStyle(color: Color(0xFF757575), fontSize: 16),
          bodySmall: TextStyle(color: Color(0xFF757575), fontSize: 14),
          headlineLarge: TextStyle(color: Color(0xFF212121), fontSize: 20),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
