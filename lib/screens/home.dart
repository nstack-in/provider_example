import 'package:flutter/material.dart';
import 'package:flutter_provider_examples/screens/counter.dart';
import 'package:flutter_provider_examples/screens/settings.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Counter Example'),
            onTap: () {
              final route = MaterialPageRoute(
                builder: (_) => const CounterPage(),
              );
              Navigator.push(context, route);
            },
          ),
          ListTile(
            title: const Text('Setting'),
            onTap: () {
              final route = MaterialPageRoute(
                builder: (_) => const SettingPage(),
              );
              Navigator.push(context, route);
            },
          )
        ],
      ),
    );
  }
}
