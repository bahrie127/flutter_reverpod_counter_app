import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_helloworld/decrement_widget.dart';
import 'package:flutter_riverpod_helloworld/increment_widget.dart';
import 'package:flutter_riverpod_helloworld/value_widget.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Riverpod Sample'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ValueWidget(),
          SizedBox(
            height: 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DecrementWidget(),
              SizedBox(
                width: 16,
              ),
              IncrementWidget()
            ],
          )
        ],
      ),
    );
  }
}
