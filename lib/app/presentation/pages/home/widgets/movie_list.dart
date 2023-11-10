part of '../home_page.dart';

class _MovieList extends StatelessWidget {
  final List<Movie> data;
  final MovieStore store;
  const _MovieList({
    required this.data,
    required this.store,
  });

  @override
  Widget build(BuildContext context) {
    var i10n = I10n.of(context);
    return data.isEmpty
        ? Center(
            child: Text(
              i10n.noData,
              style: cTextAccentMed,
            ),
          )
        : ListView.builder(
            primary: false,
            shrinkWrap: true,
            itemCount: data.length,
            itemBuilder: (context, index) {
              var item = data[index];
              return _MovieItem(
                item: item,
                store: store,
              );
            },
          );
  }
}
