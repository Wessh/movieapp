import 'package:flutter/material.dart';
import 'package:movieapp/src/controllers/movie_controller.dart';
import 'package:movieapp/src/services/dio_service_imp.dart';

import '../repositories/movies_repository_imp.dart';

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
      appBar: AppBar(),
      body: ValueListenableBuilder(
        valueListenable: _controller.movies,
        builder: (_, movie, __) => movie != null
            ? ListView.builder(
                itemCount: movie.movies.length,
                itemBuilder: (_, index) => Text(movie.movies[index].title),
              )
            : const CircularProgressIndicator(),
      ),
    );
  }
}
