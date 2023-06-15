import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class AlbumModel {
  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'describe')
  String description;

  @JsonKey(name: 'imageUrl')
  String imageUrl;

  AlbumModel(
      {required this.id,
        required this.title,
        required this.description,
        required this.imageUrl});
}
