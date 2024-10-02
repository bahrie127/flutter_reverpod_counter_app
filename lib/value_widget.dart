import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_helloworld/main.dart';

class ValueWidget extends ConsumerWidget {
  const ValueWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int value = ref.watch(counterProvider);
    return Text('Value: $value');
  }
}
