import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:zerodha_clone/config/app_router.dart';
import 'package:zerodha_clone/features/Login/presentation/cubit/login_cubit.dart';

void main() {
  runApp(MultiProvider(providers: [
    BlocProvider(
      create: (context) => LoginCubit(),
      child: Container(),
    )
  ], child: const MyApp()));
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
