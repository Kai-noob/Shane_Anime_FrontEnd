import 'package:cloud_firestore/cloud_firestore.dart';

import '../../domain/entities/episodes.dart';

import '../../domain/entities/comic.dart';

abstract class ComicRemoteDataSource {
  Future<List<Episode>> getRecentEpisodes();
  Future<List<Episode>> getFilteredEpisodes(DateTime datetime);
  Future<List<Comic>> getHotComic();
  Future<List<Comic>> getCompleteComic();
  Future<List<Episode>> getEpisodes(String comicId);
  Future<List<String>> getImages(String comicId, String episodeName);

  Future<String> getPdf(String comicId, String episodeName);

  Future<bool> checkPdfOrImage(String comicId, String episodeName);
}
