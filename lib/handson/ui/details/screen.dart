// STEP 2.3
// import 'package:flutter/material.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:pochi_pochi2026_handson/handson/ui/details/components/package_header.dart';
// import 'package:pochi_pochi2026_handson/handson/ui/details/components/version_list.dart';
// import 'package:pochi_pochi2026_handson/handson/ui/details/view_model.dart';
//
// class DetailsScreen extends HookConsumerWidget {
//   final String packageName;
//   const DetailsScreen({super.key, required this.packageName});
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final state = ref.watch(detailsScreenViewModelProvider(packageName));
//
//     return Scaffold(
//       appBar: AppBar(title: Text(packageName)),
//       body: state.when(
//         loading: () => const Center(child: CircularProgressIndicator()),
//         error: (e, _) => const Center(child: Text('エラーが発生しました')),
//         data: (s) {
//           final detail = s.packageDetail;
//           if (detail == null) {
//             return const Center(child: Text('データがありません'));
//           }
//           return ListView(
//             padding: const EdgeInsets.all(16),
//             children: [
//               DetailsPackageHeader(detail: detail),
//               const Divider(height: 32),
//               DetailsVersionList(versions: detail.versions),
//             ],
//           );
//         },
//       ),
//     );
//   }
// }
