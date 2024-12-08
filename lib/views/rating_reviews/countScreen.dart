// import 'package:flutter/material.dart';
//
// class RatingBreakdown extends StatelessWidget {
//   final double averageRating = 4.3;
//   final int totalRatings = 23;
//   final List<int> ratingCounts = [12, 5, 4, 2, 0]; // Ratings from 5 stars to 1 star
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Average rating and total ratings
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   averageRating.toStringAsFixed(1),
//                   style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
//                 ),
//                 Text(
//                   '$totalRatings ratings',
//                   style: TextStyle(fontSize: 16, color: Colors.grey),
//                 ),
//               ],
//             ),
//             SizedBox(width: 20),
//             // Rating breakdown
//             Expanded(
//               child: Column(
//                 children: List.generate(5, (index) {
//                   int starCount = 5 - index; // Reverse from 5 stars to 1 star
//                   return Row(
//                     children: [
//                       // Star icons
//                       Row(
//                         children: List.generate(
//                           starCount,
//                               (index) => Icon(Icons.star, color: Colors.amber, size: 16),
//                         ),
//                       ),
//                       // Rating bar
//                       Expanded(
//                         child: Padding(
//                           padding: const EdgeInsets.symmetric(horizontal: 8.0),
//                           child: LinearProgressIndicator(
//                             value: ratingCounts[index] / totalRatings,
//                             color: Colors.red,
//                             backgroundColor: Colors.grey[300],
//                           ),
//                         ),
//                       ),
//                       // Rating count
//                       Text(
//                         '${ratingCounts[index]}',
//                         style: TextStyle(fontSize: 14),
//                       ),
//                     ],
//                   );
//                 }),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
//
