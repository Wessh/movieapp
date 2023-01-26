import 'package:flutter/material.dart';
import 'package:movieapp/src/models/movie_model.dart';

class DetailsPage extends StatelessWidget {
  final MovieModel movie;
  const DetailsPage({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
      ),
    );
  }
}
