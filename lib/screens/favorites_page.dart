import 'package:flutter/material.dart';
import 'package:flutter_application_2/providers/joke_provider.dart';
import '../widgets/joke_item.dart';
import 'package:provider/provider.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final favorites = context.watch<JokeProvider>().jokes.where(
          (p) => p.isFavorite,
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
        : GridView.count(
            crossAxisCount: 3,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
            children: favorites.map(
              (joke) {
                return JokeItem(
                  joke: joke,
                );
              },
            ).toList(),
          );
  }
}

