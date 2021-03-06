// import 'package:acr_cloud_sdk/acr_cloud_sdk.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:music_app/services/song_service.dart';
// import 'package:music_app/services/models/deezer_song_model.dart';

// class HomeViewModel extends ChangeNotifier {
//   HomeViewModel() {
//     initAcr();
//   }
//   final AcrCloudSdk acr = AcrCloudSdk();
//   final songService = SongService();
//   DeezerSongModel currentSong;
//   bool isRecogniziing = false;
//   bool success = false;

//   Future<void> initAcr() async {
//     try {
//       acr
//         ..init(
//           host:
//               'identify-ap-southeast-1.acrcloud.com', // https://www.acrcloud.com/
//           accessKey: 'bfee3c267cda57313666e593de6d40ba',
//           accessSecret: '4sD9tlVNDLOsiLj2599vg0J4P19aYjv5UiOR5wAu',
//           setLog: true,
//         )
//         ..songModelStream.listen(searchSong);
//     } catch (e) {
//       print(e.toString());
//     }
//   }

//   void searchSong(SongModel song) async {
//     print(song);
//     final metaData = song?.metadata;
//     if (metaData != null && metaData.music.length > 0) {
//       final trackId = metaData?.music[0]?.externalMetadata?.deezer?.track?.id;
//       try {
//         final res = await songService.getTrack(trackId);
//         currentSong = res;
//         success = true;
//         notifyListeners();
//       } catch (e) {
//         isRecogniziing = false;
//         success = false;
//         notifyListeners();
//       }
//     }
//   }

//   Future<void> startRecognizing() async {
//     isRecogniziing = true;
//     success = false;
//     notifyListeners();
//     try {
//       await acr.start();
//     } catch (e) {
//       print(e.toString());
//     }
//   }

//   Future<void> stopRecognizing() async {
//     isRecogniziing = false;
//     success = false;
//     notifyListeners();
//     try {
//       await acr.stop();
//     } catch (e) {
//       print(e.toString());
//     }
//   }
// }

// final homeViewModel = ChangeNotifierProvider<HomeViewModel>((ref) {
//   print('>>> In homeViewModel');
//   return HomeViewModel();
// });
