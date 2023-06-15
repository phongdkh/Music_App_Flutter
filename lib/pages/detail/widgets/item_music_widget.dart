import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:music_flutter/models/item_music_model.dart';

import '../../../gen/assets.gen.dart';

class ItemMusicWidget extends StatelessWidget {
  final MusicModel model;
  final ValueChanged<MusicModel> callback;

  const ItemMusicWidget({
    super.key,
    required this.model,
    required this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          callback.call(model);
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
