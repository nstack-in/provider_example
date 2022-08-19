import 'package:flutter/material.dart';
import 'package:flutter_provider_examples/provider/counter_provider.dart';
import 'package:provider/provider.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<CounterProvider>(context);
    final count = counter.count;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Example'),
      ),
      body: Center(
        child: Text(
          'You pressed button\n $count times',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline5,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: counter.increment,
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}
