part of '../update_page.dart';

class _UpdateForm extends StatelessWidget {
  final UpdateMovieStore store;

  const _UpdateForm({
    required this.store,
  });

  @override
  Widget build(BuildContext context) {
    var i10n = I10n.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PrimaryTextField(
          controller: store.titleTextController,
          onChanged: (val) => store.titleChanged(val),
          keyboardType: TextInputType.text,
          hintText: i10n.title,
        ),
        PrimaryTextField(
          controller: store.directorTextController,
          onChanged: (val) => store.directorChanged(val),
          keyboardType: TextInputType.text,
          hintText: i10n.director,
        ),
        PrimaryTextField(
          controller: store.summaryTextController,
          onChanged: (val) => store.summaryChanged(val),
          keyboardType: TextInputType.text,
          hintText: i10n.summary,
          maxLength: 100,
          maxLines: 3,
        ),
        Observer(builder: (context) {
          return Wrap(
            spacing: 8.0,
            runSpacing: 4.0,
            children: CommonUtils.availableGenres.map(
              (genre) {
                return ChoiceChip(
                  selectedColor: cColorGreen,
                  backgroundColor: cColorGrey4,
                  label: Text(
                    genre,
                    style: TextStyle(
                      color: store.selectedGenres.contains(genre)
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                  selected: store.selectedGenres.contains(genre),
                  onSelected: (bool selected) {
                    store.genresChanged(genre, selected);
                  },
                );
              },
            ).toList(),
          );
        }),
      ],
    );
  }
}
