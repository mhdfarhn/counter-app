import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter_provider.dart';

class ProviderScreen extends StatelessWidget {
  const ProviderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final counterProvider = context.read<CounterProvider>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(context.watch<CounterProvider>().value.toString()),
            ElevatedButton.icon(
              onPressed: () => counterProvider.increment(),
              icon: const Icon(Icons.add),
              label: const Text('Add'),
            ),
            ElevatedButton.icon(
              onPressed: () => counterProvider.decrement(),
              icon: const Icon(Icons.remove),
              label: const Text('Remove'),
            ),
          ],
        ),
      ),
    );
  }
}
