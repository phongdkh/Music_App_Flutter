import 'package:flutter/material.dart';
import 'package:music_flutter/models/item_album_model.dart';

class ItemAlbumWidget extends StatelessWidget {
  final AlbumModel model;

  const ItemAlbumWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: 240,
      height: 300,
      alignment: Alignment.bottomLeft,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: AssetImage(model.imageUrl),
              fit: BoxFit.cover)),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              model.title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              model.description,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
