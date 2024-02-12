import 'package:counter_app/screens/riverpod/counter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RiverpodScreen extends ConsumerWidget {
  const RiverpodScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counterRiverpod = ref.read(counterProvider);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Riverpod'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(ref.watch(counterProvider).value.toString()),
              ElevatedButton.icon(
                onPressed: () => counterRiverpod.increment(),
                icon: const Icon(Icons.add),
                label: const Text('Add'),
              ),
              ElevatedButton.icon(
                onPressed: () => counterRiverpod.decrement(),
                icon: const Icon(Icons.remove),
                label: const Text('Remove'),
              ),
            ],
          ),
        ));
  }
}
