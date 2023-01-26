import 'package:flutter/material.dart';
import 'package:movieapp/src/models/movie_model.dart';

import '../utils/api.utils.dart';

class CustomListCard extends StatelessWidget {
  final MovieModel movie;
  const CustomListCard({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: const BoxDecoration(
        color: Colors.black54,
      ),
      child: Row(
        children: [
          Image.network(API.REQUEST_IMG(movie.posterPath)),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Text(
                    movie.title,
                    style: Theme.of(context).textTheme.headline6,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.visible,
                  ),
                  const Spacer(),
                  Text('Nota: ${movie.voteAverage}'),
                  const SizedBox(
                    height: 10,
                  ),
                  Text('Popularidade: ${movie.popularity}'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
