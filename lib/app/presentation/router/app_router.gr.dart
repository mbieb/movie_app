// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashScreen(),
      );
    },
    UpdateRoute.name: (routeData) {
      final args = routeData.argsAs<UpdateRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: UpdatePage(
          movieStore: args.movieStore,
          isEdit: args.isEdit,
          data: args.data,
          key: args.key,
        ),
      );
    },
  };
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SplashScreen]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [UpdatePage]
class UpdateRoute extends PageRouteInfo<UpdateRouteArgs> {
  UpdateRoute({
    required MovieStore movieStore,
    bool isEdit = false,
    Movie? data,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          UpdateRoute.name,
          args: UpdateRouteArgs(
            movieStore: movieStore,
            isEdit: isEdit,
            data: data,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'UpdateRoute';

  static const PageInfo<UpdateRouteArgs> page = PageInfo<UpdateRouteArgs>(name);
}

class UpdateRouteArgs {
  const UpdateRouteArgs({
    required this.movieStore,
    this.isEdit = false,
    this.data,
    this.key,
  });

  final MovieStore movieStore;

  final bool isEdit;

  final Movie? data;

  final Key? key;

  @override
  String toString() {
    return 'UpdateRouteArgs{movieStore: $movieStore, isEdit: $isEdit, data: $data, key: $key}';
  }
}
