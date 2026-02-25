import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pochi_pochi2026_handson/ui/home/components/search_field.dart';
import 'package:pochi_pochi2026_handson/ui/home/components/search_list.dart';
import 'package:pochi_pochi2026_handson/ui/home/view_model.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeScreenViewModelProvider);
    final textController = useTextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text("pub.dev search"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        children: [
          Gap(8),

          /// 検索窓
          Row(
            children: [
              Expanded(
                child: HomeScreenSearchField(textController: textController),
              ),
              Gap(4),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    ref
                        .read(homeScreenViewModelProvider.notifier)
                        .search(textController.text);
                  },
                  child: const Text("Search"),
                ),
              ),
            ],
          ),
          Gap(8),

          /// 検索結果一覧
          Expanded(child: HomeScreenSearchList(packages: state.packages)),
        ],
      ),
    );
  }
}
