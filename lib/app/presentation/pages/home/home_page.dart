import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:movie_app/app/application/movie/movie_store.dart';
import 'package:movie_app/app/domain/movie/movie.dart';
import 'package:movie_app/app/presentation/constants/colors.dart';
import 'package:movie_app/app/presentation/constants/dimens.dart';
import 'package:movie_app/app/presentation/constants/text_style.dart';
import 'package:movie_app/app/presentation/helpers/failure_helper.dart';
import 'package:movie_app/app/presentation/helpers/ui_helper.dart';
import 'package:movie_app/app/presentation/router/app_router.dart';
import 'package:movie_app/app/presentation/widgets/alert.dart';
import 'package:movie_app/app/presentation/widgets/app_scaffold.dart';
import 'package:movie_app/app/presentation/widgets/text_field.dart';
import 'package:movie_app/config/injection.dart';
import 'package:movie_app/generated/l10n.dart';

part './widgets/movie_item.dart';
part './widgets/movie_list.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Future<bool> _onWillPopScope(BuildContext context, I10n i10n) async {
    Alert.option(
      context: context,
      title: i10n.alertConfirm,
      body: i10n.alertQuit,
      positiveText: i10n.yes,
      cancelTextColor: Colors.black,
      positiveAction: () {
        SystemNavigator.pop();
      },
    );
    return true;
  }

  @override
  Widget build(BuildContext context) {
    I10n i10n = I10n.of(context);
    final movieStore = getIt<MovieStore>();

    reaction((_) => movieStore.failureOrSuccessOption, (failureOrSuccess) {
      failureOrSuccess.fold(() {}, (either) {
        either.fold(
          (failure) => failure.maybeWhen(
            orElse: () => appFailureHandler(failure, context),
            handled: (handled) => handled.maybeWhen(
              orElse: () {},
              cancelled: () {
                // context.pop();
              },
              error: (message) {
                Alert.notify(context, i10n.alertWarning, message);
              },
            ),
          ),
          (success) {},
        );
      });
    });

    return WillPopScope(
      onWillPop: () async => _onWillPopScope(context, i10n),
      child: AppScaffold(
        backgroundColor: cColorPrimary,
        appBar: AppBar(
          title: Text(i10n.moviesCollection),
          centerTitle: true,
          backgroundColor: cColorPrimary,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.router.push(
              UpdateRoute(movieStore: movieStore),
            );
          },
          backgroundColor: cColorGreen,
          child: const Icon(Icons.add),
        ),
        body: ListView(
          padding: padding(all: 16),
          children: [
            PrimarySearchField(
              onChanged: (value) => movieStore.setSearchQuery(value),
              hintText: i10n.searchByTitle,
            ),
            gapH16,
            FutureBuilder(
              future: movieStore.fetchMovies(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const SizedBox.shrink();
                }
                if (snapshot.hasError) {
                  return const SizedBox.shrink();
                }
                return Observer(
                  builder: (context) {
                    return _MovieList(
                      data: movieStore.filteredMovies,
                      store: movieStore,
                    );
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
