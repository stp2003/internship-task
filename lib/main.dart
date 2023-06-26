import 'package:flutter/material.dart';
import 'package:internship_task/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFFAFAFB),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}
