// import 'package:counter_app_using_provider/provider/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:multi_provider_1/providers/counter_provider.dart';
import 'package:provider/provider.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CounterProvider>(context);
    final count = counterProvider.count;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Page'),
      ),
      body: Center(
        child: Text(
          'Button press count: $count',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('Counter button pressed');
          counterProvider.incrementCount();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
