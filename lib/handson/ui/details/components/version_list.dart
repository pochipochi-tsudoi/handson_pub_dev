// STEP 2.3
// import 'package:flutter/material.dart';
// import 'package:pochi_pochi2026_handson/handson/model/package/model.dart';
//
// class DetailsVersionList extends StatelessWidget {
//   final List<PackageVersion> versions;
//   const DetailsVersionList({super.key, required this.versions});
//
//   @override
//   Widget build(BuildContext context) {
//     final recent = versions.reversed.take(10).toList();
//
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text('Versions (${versions.length})'),
//         const SizedBox(height: 4),
//         ...recent.map(
//           (v) => Padding(
//             padding: const EdgeInsets.symmetric(vertical: 4),
//             child: Row(
//               children: [
//                 Text(v.version ?? ''),
//                 const SizedBox(width: 16),
//                 Text(
//                   v.published != null ? v.published!.substring(0, 10) : '',
//                   style: const TextStyle(color: Colors.grey),
//                 ),
//                 const Spacer(),
//                 if (v.retracted) const Text('retracted'),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
