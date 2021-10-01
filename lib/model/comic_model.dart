class ComicModel {
  late String title;
  late String coverPhoto;
  late String description;
  late int episode;
  late List<dynamic> photos;
  late bool editorChoice;
  late List<dynamic> genres;
  late bool isFavourite;

  ComicModel(
      {required this.title,
      required this.coverPhoto,
      required this.description,
      required this.episode,
      required this.photos,
      required this.editorChoice,
      required this.genres,
      required this.isFavourite});

  ComicModel.fromFirebase(Map<dynamic, dynamic> map) {
    title = map['title'];
    coverPhoto = map['coverPhoto'];
    description = map['description'];
    episode = map['episode'];
    photos = map['photos'];
    editorChoice = map['editorChoice'];
    genres = map['genres'];
    isFavourite = map['isFavourite'];
  }

  toFirebase() {
    return {
      'title': title,
      'coverPhoto': coverPhoto,
      'description': description,
      'episode': episode,
      'photos': photos,
      'editorChoice': editorChoice,
      'genres': genres,
      'isFavourite': isFavourite
    };
  }
}
