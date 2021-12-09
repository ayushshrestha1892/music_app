// import 'package:flutter/material.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:music_app/song_screen.dart';
// import 'package:music_app/viewmodels/home_vm.dart';

// class SongRecognition extends HookWidget {
//   @override
//   Widget build(BuildContext context) {
//     final vm = useProvider(homeViewModel);
//     return ProviderListener<HomeViewModel>(
//       provider: homeViewModel,
//       onChange: (contex, vm) {
//         if (vm.success) {
//           Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => SongScreen(song: vm.currentSong),
//               ));
//         }
//       },
//       child: Scaffold(
//         backgroundColor: Colors.deepOrange,
//         body: Container(
//           height: MediaQuery.of(context).size.height,
//           width: MediaQuery.of(context).size.width,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Text(
//                 'Tap',
//                 style: TextStyle(color: Colors.white, fontSize: 25),
//               ),
//               SizedBox(
//                 height: 40,
//               ),
//               GestureDetector(
//                 onTap: () => vm.isRecogniziing
//                     ? vm.stopRecognizing()
//                     : vm.startRecognizing(),
//                 child: Material(
//                   shape: CircleBorder(),
//                   elevation: 0,
//                   child: Container(
//                     padding: EdgeInsets.all(40),
//                     height: 200,
//                     width: 200,
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       color: Colors.blue,
//                     ),
//                     child: Image.asset(
//                       'assets/astronaut.jpg',
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
