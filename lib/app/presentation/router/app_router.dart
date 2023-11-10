import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/app/application/movie/movie_store.dart';
import 'package:movie_app/app/presentation/pages/home/home_page.dart';
import 'package:movie_app/app/presentation/pages/home/update_page.dart';
import 'package:movie_app/app/presentation/pages/splash/splash_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: UpdateRoute.page),
      ];
}
