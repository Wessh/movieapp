import 'package:flutter/material.dart';
import 'package:movieapp/src/controllers/movie_controller.dart';
import 'package:movieapp/src/services/dio_service_imp.dart';

import '../repositories/movies_repository_imp.dart';
import '../widgets/custom_list_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final MovieController _controller = MovieController(
    MoviesRepositoryImp(DioServiceImp()),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(28),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              Text(
                'Movies',
                style: Theme.of(context).textTheme.headline3,
              ),
              ValueListenableBuilder(
                valueListenable: _controller.movies,
                builder: (_, movie, __) => movie != null
                    ? ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: movie.movies.length,
                        itemBuilder: (_, index) =>
                            CustomListCard(movie: movie.movies[index]),
                        separatorBuilder: (_, __) => const Divider(),
                      )
                    : const CircularProgressIndicator(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
