// import 'package:flutter/material.dart';


// import '../../../../../../core/global/loading_indicator.dart';


// class SearchResultListView extends StatelessWidget {
//   const SearchResultListView({
//     Key? key,
//     required this.searchComicController,
//   }) : super(key: key);


//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: Obx(() {
//         if (searchComicController.isLoading) {
//           return const LoadingIndicator();
//         }
//         if (searchComicController.isEmpty) {
//           return Center(
//             child: Column(
//               children: const [
//                 Icon(Icons.error),
//                 Text(
//                   "Ooops No Comic Found",
//                   style: TextStyle(color: Colors.red, fontSize: 20),
//                 ),
//               ],
//             ),
//           );
//         }
//         if (searchComicController.searchComicList.isEmpty) {
//           return const Center(
//             child: Text(
//               "Search Your Mangas",
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
//             ),
//           );
//         } else {
//           return ListView.builder(
//             padding: EdgeInsets.all(10),
//             itemCount: searchComicController.searchComicList.length,
//             itemBuilder: (BuildContext context, int index) {
//               return ListTile(
//                 leading: CircleAvatar(
//                   backgroundImage: NetworkImage(
//                       searchComicController.searchComicList[index].coverPhoto),
//                 ),
//                 title: Text(
//                   searchComicController.searchComicList[index].title,
//                   style: const TextStyle(
//                       fontSize: 16, fontWeight: FontWeight.w500),
//                 ),
//               );
//             },
//           );
//         }
//       }),
//     );
//   }
// }
