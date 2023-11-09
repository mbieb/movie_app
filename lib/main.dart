import 'package:flutter/material.dart';
import 'package:movie_app/app/presentation/router/app_router.dart';
import 'package:movie_app/config/main/configure.dart';

void main() async {
  await configure();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Movie Demo',
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter.config(),
    );
  }
}
