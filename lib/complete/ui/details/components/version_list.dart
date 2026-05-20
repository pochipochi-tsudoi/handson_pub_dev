import 'package:flutter/material.dart';
import 'package:handson_pub_dev/complete/model/package/model.dart';

class DetailsVersionList extends StatelessWidget {
  final List<PackageVersion> versions;
  const DetailsVersionList({super.key, required this.versions});

  @override
  Widget build(BuildContext context) {
    final recent = versions.reversed.take(10).toList();

    return Column(
      crossAxisAlignment: .start,
      children: [
        Text('Versions (${versions.length})'),
        const SizedBox(height: 4),
        ...recent.map(
          (v) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Row(
              children: [
                Text(v.version ?? ''),
                const SizedBox(width: 16),
                Text(
                  v.published != null ? v.published!.substring(0, 10) : '',
                  style: const TextStyle(color: Colors.grey),
                ),
                const Spacer(),
                if (v.retracted) const Text('retracted'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
