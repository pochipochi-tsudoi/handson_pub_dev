import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class HomeScreenSearchField extends HookWidget {
  const HomeScreenSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    final textController = useTextEditingController();
    return TextField(
      controller: textController,
      decoration: const InputDecoration(
        hintText: 'Search',
        border: OutlineInputBorder(),
      ),
    );
  }
}
