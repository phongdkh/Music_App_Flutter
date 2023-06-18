import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../components/item_album_widget.dart';
import '../../gen/assets.gen.dart';
import '../../models/item_album_model.dart';
import '../../models/item_music_model.dart';
import 'music_detail_viewmodel.dart';
import 'widgets/item_music_widget.dart';

class MusicDetailPage extends StatefulWidget {
  final MusicModel model;
  final AlbumModel albumModel;

  const MusicDetailPage(
      {Key? key, required this.model, required this.albumModel})
      : super(key: key);

  @override
  State<MusicDetailPage> createState() => _MusicDetailPageState();
}

class _MusicDetailPageState extends State<MusicDetailPage> {
  bool playing = false;

  @override
  Widget build(BuildContext context) {

    // MediaQueryData queryData = MediaQuery.of(context);
    // final width = MediaQuery.of(context).size.width;
    // final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent[200],
        //backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Container(
            margin: const EdgeInsets.all(20),
            child: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 29),
            child: Assets.icons.icSearch.svg(),
          )
        ],
        title: const Text(
          "Music Player",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w600, fontSize: 15),
        ),
      ),
      body: Stack(
        children: [
          // Container(
          //   width: width,
          //   height: height / 2.4,
          //   decoration: const BoxDecoration(
          //       color: Colors.orangeAccent,
          //       borderRadius: BorderRadius.only(
          //           bottomRight: Radius.circular(1000),
          //           bottomLeft: Radius.circular(1000))),
          // ),
          // Positioned(
          //     top: 0,
          //     right: 0,
          //     child: Image.asset("assets/icons/Rectangle.png")),
          Container(
            alignment: Alignment.center,
              height: 340,
              child: Image.asset('assets/images/Rectangle.png', fit: BoxFit.cover)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: SizedBox(
                      height: 280,
                      width: 270,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: Image.asset("assets/images/image_1.png")))),
              const Padding(
                padding: EdgeInsets.only(left: 30.0, bottom: 8.0),
                child: Text(
                  "Hip hop",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 30.0, bottom: 8.0),
                child: Text(
                  "Music",
                  style: TextStyle(
                    fontSize: 10.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // Center(
              //   child: WaveProgressBar,
              // ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 30.0, right: 10.0),
                  child: Selector<MusicDetailVM, List<MusicModel>>(
                    selector: (_, vm) => vm.listDataMusic,
                    shouldRebuild: (data1, data2) => true,
                    builder: (_, data, __) {
                      return ListView.builder(
                        physics: const AlwaysScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: data.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ItemMusicWidget(
                            model: data[index],
                            callback: (MusicModel value) {
                              setState(() {
                                playing = !playing;
                              });
                            },
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
          AnimatedPositioned(
            width: MediaQuery.of(context).size.width,
            height: playing ? 0.0 : 60.0,
            // top: playing ? 0.0 : 150.0,
            bottom: playing ? 0.0 : 0.0,
            duration: const Duration(seconds: 2),
            curve: Curves.fastOutSlowIn,
            child: Container(
              height: 60.0,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(203, 197, 197, 0.51),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  topRight: Radius.circular(15.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 40.0, right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(top: 8, bottom: 8),
                        child: SizedBox(
                          width: 40,
                          height: 40,
                          child: Image.asset(
                            'assets/images/image_1.png',
                            fit: BoxFit.cover,
                          ),
                        )),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'The last best 1',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                              color: Colors.yellow),
                        ),
                        Text('Hip Hop'),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 15),
                          child: Assets.icons.icBack.svg(),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 15),
                          child: Assets.icons.icPlay.svg(),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 0),
                          child: Assets.icons.icNext.svg(),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
