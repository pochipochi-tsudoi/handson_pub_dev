import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pochi_pochi2026_handson/complete/model/package/model.dart';

class DetailsPackageHeader extends StatelessWidget {
  final PackageDetailResponse detail;
  const DetailsPackageHeader({super.key, required this.detail});

  @override
  Widget build(BuildContext context) {
    final pubspec = detail.latest.pubspec;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('${detail.name}  v${detail.latest.version}'),
        const Gap(8),
        Text(pubspec.description ?? ''),
        if (pubspec.repository != null) ...[
          const Gap(8),
          Text('Repository: ${pubspec.repository!}'),
        ],
        if (pubspec.homepage != null) ...[
          const Gap(4),
          Text('Homepage: ${pubspec.homepage!}'),
        ],
        if (pubspec.topics.isNotEmpty) ...[
          const Gap(8),
          Text('Topics: ${pubspec.topics.join(', ')}'),
        ],
      ],
    );
  }
}
