import 'package:flutter/material.dart';
import 'package:zerodha_clone/config/app_router.dart';
import 'package:zerodha_clone/features/Welcome_to_Kite/presentation/view/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Zerodha Clone',
      theme: ThemeData(
        useMaterial3: true,
      ),
      routerConfig: AppRouter.router,
    );
  }
}
