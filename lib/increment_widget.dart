import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_helloworld/main.dart';

class IncrementWidget extends ConsumerWidget {
  const IncrementWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
        onPressed: () {
          ref.read(counterProvider.notifier).update((state) => state + 1);
        },
        child: const Text('+'));
  }
}
