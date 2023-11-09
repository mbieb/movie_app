import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/app/presentation/constants/colors.dart';
import 'package:movie_app/app/presentation/constants/images.dart';
import 'package:movie_app/app/presentation/helpers/ui_helper.dart';
import 'package:movie_app/app/presentation/router/app_router.dart';
import 'package:movie_app/app/presentation/widgets/app_scaffold.dart';

@RoutePage()
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      // Navigate to HomePage after 3 seconds
      context.router.replace(const HomeRoute());
    });
    return AppScaffold(
      isUseDefaultSafeArea: false,
      backgroundColor: cColorPrimary2,
      body: Center(
        child: Padding(
          padding: padding(bottom: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Image.asset(
                  cImageMovie,
                  width: 150,
                ),
              ),
              const CircularProgressIndicator(
                color: cColorWhite,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
