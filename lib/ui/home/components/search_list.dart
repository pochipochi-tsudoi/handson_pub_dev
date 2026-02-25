import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreenSearchList extends StatelessWidget {
  const HomeScreenSearchList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Column(children: [Gap(4), Text("test"), Gap(8), Divider()]);
      },
    );
  }
}
