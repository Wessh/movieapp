import 'package:flutter/material.dart';
import 'package:movieapp/src/models/movie_model.dart';
import 'package:movieapp/src/pages/details_page.dart';

import '../utils/api.utils.dart';

class CustomListCard extends StatelessWidget {
  final MovieModel movie;
  const CustomListCard({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => DetailsPage(movie: movie),
              ));
        },
        child: Container(
          height: 200,
          decoration: BoxDecoration(
            color: Colors.black54,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    topLeft: Radius.circular(15)),
                child: Image.network(
                  API.REQUEST_IMG(movie.posterPath),
                  loadingBuilder: (_, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return const CircularProgressIndicator.adaptive();
                  },
                ),
              ),
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
        ),
      ),
    );
  }
}
