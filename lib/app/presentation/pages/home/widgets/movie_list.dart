part of '../home_page.dart';

class _MovieList extends StatelessWidget {
  final List<Movie> data;
  const _MovieList({
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      primary: false,
      shrinkWrap: true,
      itemCount: data.length,
      itemBuilder: (context, index) {
        var item = data[index];
        return _MovieItem(
          item: item,
        );
      },
    );
  }
}
