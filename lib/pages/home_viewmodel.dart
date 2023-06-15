import 'package:music_flutter/base/base_viewmodel.dart';

import '../models/item_album_model.dart';
import '../models/item_music_model.dart';

class HomeViewModel extends BaseViewModel {
  List<AlbumModel> listDataAlbum = [];
  List<MusicModel> listDataMusic = [];

  @override
  void onInit() {
    fetchAlbumAll();
    fetchMusicAll();
  }

  Future fetchAlbumAll() async {
    listDataAlbum.add(AlbumModel(
        id: 0,
        title: 'HIP HOP',
        description: 'MUSIC',
        imageUrl: 'assets/images/image_1.png'));
    listDataAlbum.add(AlbumModel(
        id: 1,
        title: 'POP',
        description: 'MUSIC',
        imageUrl: 'assets/images/image_2.png'));
    listDataAlbum.add(AlbumModel(
        id: 2,
        title: 'JAZZ',
        description: 'MUSIC',
        imageUrl: 'assets/images/image_1.png'));

    notifyListeners();
  }

  Future<void> fetchMusicAll() async {
    listDataMusic.clear();
    listDataMusic.add(MusicModel(
        id: 1,
        type: 0,
        title: 'The last best 1',
        description: 'MUSIC',
        time: '3:30',
        author: 'Hip Hop',
        imageUrl: 'assets/images/Music Cover.png',
        pathMusic: 'assets/musics/Co_choi_co_chiu.mp3',
        isLoadSound: true));

    listDataMusic.add(MusicModel(
        id: 2,
        type: 1,
        title: 'The last best 2',
        description: 'MUSIC',
        time: '3:30',
        author: 'Pop',
        imageUrl: 'assets/images/unsplash_2.png',
        pathMusic: 'assets/musics/Co_don_tren_sofa.mp3',
        isLoadSound: false));

    listDataMusic.add(MusicModel(
        id: 3,
        type: 2,
        title: 'The last best 3',
        description: 'MUSIC',
        time: '3:30',
        author: 'Jazz',
        imageUrl: 'assets/images/unsplash_1.png',
        pathMusic: 'assets/musics/Criminal.mp3',
        isLoadSound: false));

    listDataMusic.add(MusicModel(
        id: 4,
        type: 0,
        title: 'The last best 4',
        description: 'MUSIC',
        time: '3:30',
        author: 'Hip Hop',
        imageUrl: 'assets/images/Music Cover.png',
        pathMusic: 'assets/musics/Safe_And_Sound.mp3',
        isLoadSound: false));

    listDataMusic.add(MusicModel(
        id: 5,
        type: 1,
        title: 'The last best 5',
        description: 'MUSIC',
        time: '3:30',
        author: 'Pop',
        imageUrl: 'assets/images/unsplash_2.png',
        pathMusic: 'assets/musics/See_You_Again.mp3',
        isLoadSound: false));
    listDataMusic.add(MusicModel(
        id: 6,
        type: 2,
        title: 'The last best 6',
        description: 'MUSIC',
        time: '3:30',
        author: 'Jazz',
        imageUrl: 'assets/images/unsplash_1.png',
        pathMusic: 'assets/musics/Tong_phu.mp3',
        isLoadSound: false));

    listDataMusic.add(MusicModel(
        id: 7,
        type: 0,
        title: 'The last best 7',
        description: 'MUSIC',
        time: '3:30',
        author: 'Hip Hop',
        imageUrl: 'assets/images/Music Cover.png',
        pathMusic: 'assets/musics/Until_You.mp3',
        isLoadSound: false));

    listDataMusic.add(MusicModel(
        id: 8,
        type: 1,
        title: 'The last best 8',
        description: 'MUSIC',
        time: '3:30',
        author: 'Pop',
        imageUrl: 'assets/images/unsplash_2.png',
        pathMusic: 'assets/musics/Vo_tan.mp3',
        isLoadSound: false));

    notifyListeners();
  }
}
