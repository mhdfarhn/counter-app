import 'package:counter_app/screens/riverpod/riverpod_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    // // Provider
    // ChangeNotifierProvider(
    //   create: (_) => CounterProvider(),
    //   child: const MainApp(),
    // ),
    // // Cubit
    // BlocProvider(
    //   create: (_) => CounterCubit(),
    //   child: const MainApp(),
    // ),
    // Riverpod
    const ProviderScope(child: MainApp()),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(useMaterial3: true),
      home: const RiverpodScreen(),
    );
  }
}
