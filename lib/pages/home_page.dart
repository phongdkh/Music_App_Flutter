import 'package:flutter/material.dart';
import 'package:music_flutter/base/base_page.dart';
import 'package:music_flutter/components/item_album_widget.dart';
import 'package:music_flutter/components/item_music_widget.dart';
import 'package:music_flutter/models/item_album_model.dart';
import 'package:music_flutter/pages/home_viewmodel.dart';

import '../gen/assets.gen.dart';
import '../generated/l10n.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _homePageState();
}

class _homePageState extends State<HomePage> with MixinBasePage<HomeViewModel> {
  @override
  Widget build(BuildContext context) {
    //List<ItemAlbumModel> itemAlbums = ItemAlbumModel.itemAlbums;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          leading: Container(
              margin: const EdgeInsets.only(left: 29),
              child: Assets.icons.icDrawer.svg()),
          actions: [
            Container(
                margin: const EdgeInsets.only(right: 29),
                child: Assets.icons.icSearch.svg())
          ],
          title: const Text(
            "Music Player",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w600, fontSize: 15),
          ),
        ),
        body: builder(() => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30.0, top: 8.0),
                  child: Text(
                    S.of(context).txt_top_album,
                    style: const TextStyle(
                      fontSize: 23.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: SizedBox(
                        height: 340,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: provider.listDataAlbum.length,
                          itemBuilder: (BuildContext context, int index) {
                            return ItemAlbumWidget(
                              model: provider.listDataAlbum[index],
                            );
                          },
                        ))),
                const SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0, bottom: 8.0),
                  child: Text(
                    S.of(context).txt_recommended,
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30.0, right: 10.0),
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: const AlwaysScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemCount: provider.listDataMusic.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ItemMusicWidget(
                          model: provider.listDataMusic[index],
                        );
                      },
                    ),
                  ),
                )
              ],
            )));
  }

  @override
  HomeViewModel create() {
    return HomeViewModel();
  }

  @override
  void initialise(BuildContext context) {}
}
