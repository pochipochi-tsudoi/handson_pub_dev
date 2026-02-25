import 'package:flutter/material.dart';
import 'package:pochi_pochi2026_handson/model/package/model.dart';

class DetailsVersionList extends StatelessWidget {
  final List<PackageVersion> versions;
  const DetailsVersionList({super.key, required this.versions});

  @override
  Widget build(BuildContext context) {
    final recent = versions.reversed.take(10).toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Versions (${versions.length})'),
        const SizedBox(height: 4),
        ...recent.map(
          (v) => ListTile(
            dense: true,
            contentPadding: EdgeInsets.zero,
            title: Text(v.version ?? ''),
            subtitle: Text(
              v.published != null ? v.published!.substring(0, 10) : '',
            ),
            trailing: v.retracted ? const Text('retracted') : null,
          ),
        ),
      ],
    );
  }
}
