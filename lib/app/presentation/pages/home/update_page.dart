import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:movie_app/app/application/movie/movie_store.dart';
import 'package:movie_app/app/application/movie/update_movie_store.dart';
import 'package:movie_app/app/domain/movie/movie.dart';
import 'package:movie_app/app/domain/utils/common_util.dart';
import 'package:movie_app/app/presentation/constants/colors.dart';
import 'package:movie_app/app/presentation/constants/dimens.dart';
import 'package:movie_app/app/presentation/helpers/ui_helper.dart';
import 'package:movie_app/app/presentation/widgets/alert.dart';
import 'package:movie_app/app/presentation/widgets/app_scaffold.dart';
import 'package:movie_app/app/presentation/widgets/text_field.dart';
import 'package:movie_app/config/injection.dart';
import 'package:movie_app/generated/l10n.dart';

part './widgets/update_form.dart';

@RoutePage()
class UpdatePage extends StatefulWidget {
  final bool isEdit;
  final MovieStore movieStore;
  final Movie? data;
  const UpdatePage({
    required this.movieStore,
    this.isEdit = false,
    this.data,
    super.key,
  });

  @override
  State<UpdatePage> createState() => _UpdatePageState();
}

class _UpdatePageState extends State<UpdatePage> {
  final updateMovieStore = getIt<UpdateMovieStore>();

  @override
  void initState() {
    super.initState();
    if (widget.isEdit) {
      updateMovieStore.fethDataDetail(widget.data);
    }
  }

  void _onButtonSavePressed(I10n i10n) {
    if (widget.isEdit) {
      widget.movieStore.editMovie(updateMovieStore.movieForm);
    } else {
      widget.movieStore.addMovie(updateMovieStore.movieForm);
    }

    Alert.notifyAction(
      context,
      i10n.alertSuccess,
      widget.isEdit ? i10n.alertSuccessEditMovie : i10n.alertSuccessAddMovie,
      positiveAction: () {
        context.router.pop();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var i10n = I10n.of(context);
    return AppScaffold(
      backgroundColor: cColorPrimary,
      appBar: AppBar(
        backgroundColor: cColorPrimary,
        actions: [
          if (widget.isEdit)
            Container(
              padding: padding(vertical: 8),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: cColorRed,
                ),
                onPressed: () {
                  Alert.option(
                    context: context,
                    title: i10n.alertConfirm,
                    body: i10n.alertDelete,
                    positiveText: i10n.yes,
                    cancelTextColor: Colors.black,
                    positiveAction: () {
                      widget.movieStore.removeMovie(widget.data);
                      Alert.notifyAction(
                        context,
                        i10n.alertSuccess,
                        i10n.alertSuccessDeleteMovie,
                        positiveAction: () {
                          context.router.pop();
                        },
                      );
                    },
                  );
                },
                child: const Text('D'),
              ),
            ),
          gapW12,
          Observer(builder: (context) {
            return Container(
              padding: padding(vertical: 8),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  disabledBackgroundColor: cColorGrey4,
                ),
                onPressed: updateMovieStore.enableButton
                    ? () => _onButtonSavePressed(i10n)
                    : null,
                child: const Text('S'),
              ),
            );
          }),
          gapW12,
        ],
      ),
      body: ListView(
        padding: padding(all: 16),
        children: [
          _UpdateForm(
            store: updateMovieStore,
          ),
        ],
      ),
    );
  }
}
