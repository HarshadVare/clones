import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zerodha_clone/features/Welcome_to_Kite/presentation/view/welcome.dart';
import 'package:zerodha_clone/theme/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zerodha Clone',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const WelcomeScreen(),
    );
  }
}
