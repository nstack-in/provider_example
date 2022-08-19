import 'package:flutter/material.dart';
import 'package:flutter_provider_examples/screens/counter.dart';
import 'package:provider/provider.dart';
import 'provider/counter_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CounterProvider(),
      child: const MaterialApp(
        home: CounterPage(),
      ),
    );
  }
}
