
import 'package:json_annotation/json_annotation.dart';

class MusicModel {
  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'type')
  int type;

  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'description')
  String description;

  @JsonKey(name: 'time')
  String time;

  @JsonKey(name: 'author')
  String author;

  @JsonKey(name: 'imageUrl')
  String imageUrl;

  @JsonKey(name: 'pathMusic')
  String pathMusic;

  @JsonKey(name: 'isLoadSound')
  bool isLoadSound;

  MusicModel(
      {required this.id,
        required this.type,
        required this.title,
        required this.description,
        required this.time,
        required this.author,
        required this.imageUrl,
        required this.pathMusic,
        required this.isLoadSound});
}
