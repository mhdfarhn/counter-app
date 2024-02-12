import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_cubit.dart';

class CubitScreen extends StatelessWidget {
  const CubitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final counterCubit = context.read<CounterCubit>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(context.watch<CounterCubit>().value.toString()),
            ElevatedButton.icon(
              onPressed: () => counterCubit.increment(),
              icon: const Icon(Icons.add),
              label: const Text('Add'),
            ),
            ElevatedButton.icon(
              onPressed: () => counterCubit.decrement(),
              icon: const Icon(Icons.remove),
              label: const Text('Remove'),
            ),
          ],
        ),
      ),
    );
  }
}
