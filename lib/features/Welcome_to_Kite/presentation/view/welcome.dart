import 'package:flutter/material.dart';
import 'package:zerodha_clone/theme/app_colors.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {  
    return Scaffold(
      body: SafeArea(
        top: false, // Disable padding for the status bar
        child: Column(
          children: [Text('data',style: TextStyle(color: Colors.black),)],
        ),
      ),
    );
  }
}
