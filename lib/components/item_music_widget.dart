import 'package:flutter/material.dart';
import 'package:music_flutter/models/item_album_model.dart';
import 'package:music_flutter/models/item_music_model.dart';
import 'package:music_flutter/pages/detail/music_detail_page.dart';

class ItemMusicWidget extends StatelessWidget {
  final MusicModel model;

  const ItemMusicWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => MusicDetailPage(
                      model: model,
                      albumModel: AlbumModel(
                          id: 0,
                          title: 'HIP HOP',
                          description: 'MUSIC',
                          imageUrl: 'assets/images/image_1.png'),
                    )),
          );
        },
        child: SizedBox(
          width: 50,
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(model.imageUrl)),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(model.title,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontWeight: FontWeight.bold)),
                  Text(model.author,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontWeight: FontWeight.normal)),
                ],
              ),
              const SizedBox(width: 20),
              Row(children: [
                IconButton(
                  color: Colors.black,
                  icon: Text(model.time),
                  onPressed: () {},
                ),
              ]),
              Row(children: [
                IconButton(
                  color: Colors.black,
                  icon: Image.asset("assets/icons/ic_Group.png"),
                  onPressed: () {},
                ),
              ]),
              Row(children: [
                IconButton(
                  color: Colors.black,
                  icon: Image.asset("assets/icons/ic_Vector.png"),
                  onPressed: () {},
                ),
              ]),
            ],
          ),
        ));
  }
}
