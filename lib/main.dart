import 'package:flutter/material.dart';
import 'package:flutter_provider_examples/provider/favorite_provider.dart';
import 'package:flutter_provider_examples/screens/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FavoriteProvider(),
      child: const MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
