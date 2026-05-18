import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:pochi_pochi2026_handson/complete/model/search/model.dart';

class HomeScreenSearchList extends StatelessWidget {
  final List<Package> packages;
  const HomeScreenSearchList({super.key, required this.packages});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: packages.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            context.push('/details', extra: packages[index].package);
          },
          child: Column(
            children: [
              Gap(4),
              Text(packages[index].package, style: TextStyle(fontSize: 20)),
              Gap(8),
              Divider(),
            ],
          ),
        );
      },
    );
  }
}
