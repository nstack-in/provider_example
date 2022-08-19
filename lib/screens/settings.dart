import 'package:flutter/material.dart';
import 'package:flutter_provider_examples/provider/theme_provider.dart';
import 'package:provider/provider.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Switch'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: provider.toggleTheme,
          child: const Text('Toggle Theme'),
        ),
      ),
    );
  }
}
