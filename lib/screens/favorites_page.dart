import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/local_provider.dart';
import '../widgets/local_item.dart';


class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final favorites = context.watch<LocalProvider>().local.where(
          (j) => j.isFavorite,
    );

    return favorites.isEmpty
        ? const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.heart_broken),
          SizedBox(
            height: 10,
          ),
          Text("You've no favorites yet."),
        ],
      ),
    )
        : SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          children: favorites.map(
                (local) {
              return LocalItem(
                local: local,
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
