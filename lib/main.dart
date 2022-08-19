import 'package:flutter/material.dart';
import 'package:flutter_provider_examples/provider/counter_provider.dart';
import 'package:flutter_provider_examples/provider/theme_provider.dart';
import 'package:flutter_provider_examples/screens/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ThemeProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CounterProvider(),
        ),
      ],
      builder: (context, child) {
        final provider = Provider.of<ThemeProvider>(context);
        return MaterialApp(
          theme: provider.theme,
          home: const HomePage(),
        );
      },
    );
  }
}
