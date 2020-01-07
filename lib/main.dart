import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home:Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: RandomWodState(
          ),
        ),
      ),
    );
  }
}

class RandomWodState extends StatefulWidget {
  @override
  _RandomWodStateState createState() => _RandomWodStateState();
}

class _RandomWodStateState extends State<RandomWodState> {
  @override
  Widget build(BuildContext context) {
    final _suggestions = <WordPair>[];
    final _biggerFont = const TextStyle(fontSize: 18.0);
    final wordPair = WordPair.random();
    return Text(wordPair.asPascalCase);
  }
}
