part of '../home_page.dart';

class _MovieItem extends StatelessWidget {
  final Movie item;
  const _MovieItem({
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding(all: 16),
      margin: margin(bottom: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: cColorPrimary2,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            item.title ?? '',
            style: cTextAccentBold,
          ),
          gapH8,
          Text(
            item.director ?? '',
            style: cTextAccentRegSM,
          ),
          gapH8,
          Container(
            alignment: Alignment.centerRight,
            child: Text(
              item.genres?.join(' / ') ?? '',
              style: cTextAccentRegSM,
            ),
          )
        ],
      ),
    );
  }
}
