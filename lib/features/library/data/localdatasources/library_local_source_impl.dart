import 'dart:convert';

import 'package:movie_app/features/library/data/localdatasources/library_local_source.dart';
import 'package:movie_app/features/library/data/models/favourite_comic_model.dart';
import 'package:movie_app/features/library/domain/entities/favourite_comic.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LibraryLocalSourceImpl implements LibraryLocalSource {
  @override
  Future<FavouriteComic> deleteComics() {
    // TODO: implement deleteComics
    throw UnimplementedError();
  }

  @override
  Future<List<FavouriteComic>> fetchComics() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return FavJsonComicDecoder().decode(prefs.getString("fav")!);
  }

  @override
  Future<void> saveComics(FavouriteComic favouriteComic) async {
    final SharedPreferences _prefs = await SharedPreferences.getInstance();

    var jsonString = jsonEncode(favouriteComic);

    await _prefs.setString("fav", jsonString);
  }
}

abstract class FavComicDecoder {
  List<FavouriteComic> decode(String source);
}

class FavJsonComicDecoder implements FavComicDecoder {
  List<FavouriteComic> decode(String source) {
    var json = jsonDecode(source) as List;
    return json.map((item) => FavouriteComicModel.fromJson(item)).toList();
  }
}
