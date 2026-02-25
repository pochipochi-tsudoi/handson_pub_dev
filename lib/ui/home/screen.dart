import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pochi_pochi2026_handson/ui/home/components/search_field.dart';
import 'package:pochi_pochi2026_handson/ui/home/components/search_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("pub.dev search"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        children: [
          Gap(8),

          /// 検索窓
          HomeScreenSearchField(),
          Gap(8),

          /// 検索結果一覧
          Expanded(child: HomeScreenSearchList()),
        ],
      ),
    );
  }
}
