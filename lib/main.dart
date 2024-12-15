import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'screens/random_joke.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Joke App',
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/randomJoke': (context) => RandomJoke(),
      },
    );
  }
}