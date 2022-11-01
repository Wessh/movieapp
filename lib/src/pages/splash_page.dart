import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3)).then((_) {
      Navigator.of(context).pushReplacementNamed('/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RichText(
          text: TextSpan(
            text: 'Movie',
            style: TextStyle(
                color: Colors.yellow[700],
                fontSize: 48,
                fontWeight: FontWeight.bold),
            children: [
              TextSpan(
                text: 'App',
                style: TextStyle(
                  color: Colors.blue[800],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 34,
        ),
        const CircularProgressIndicator()
      ],
    );
  }
}
