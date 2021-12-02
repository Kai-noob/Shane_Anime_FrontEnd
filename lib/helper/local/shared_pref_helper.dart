// import 'package:flutter/material.dart';
// import 'package:movie_app/features/home/data/models/recent_episode_model.dart';
// import 'dart:convert';

// import 'package:shared_preferences/shared_preferences.dart';

// class SharedPrefHelper extends ChangeNotifier {
//   List<EpisodeModel> episodeList = [];

//   Future<void> insertData() async {
//     List<String> episodes =
//         episodeList.map((e) => json.encode(e.toJson())).toList();
//     SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
//     await sharedPreferences.setStringList('episodes', episodes);
//   }

//   void addToLocal(EpisodeModel episode) {
//     episodeList.add(episode);

//     insertData();
//     notifyListeners();
//   }

//   Future<void> getLocalData() async {
//     SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

//     var result = sharedPreferences.getStringList("episodes");

//     if (result != null) {
//       episodeList =
//           result.map((e) => EpisodeModel.fromJson(json.decode(e))).toList();
//     }
//     notifyListeners();
//   }
// }

// import 'package:shared_preferences/shared_preferences.dart';

// class LocalService{


//   Future<void> insertLocalDatat() async{
//     SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
//     sharedPreferences.setBool("key", value)
//   }
// }