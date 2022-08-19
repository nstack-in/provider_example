import 'package:flutter/material.dart';
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
    // ThemeProvider can't be access here using the above context
    return ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      builder: (context, child) {
        final provider = Provider.of<ThemeProvider>(context);
        return MaterialApp(
          theme: provider.theme,
          home: const HomePage(),
        );
      },
      // child: MaterialApp(
      //   theme: provider.theme,
      //   home: const HomePage(),
      // ),
    );
  }
}
