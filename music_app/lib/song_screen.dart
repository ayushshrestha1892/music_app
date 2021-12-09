// import 'package:flutter/material.dart';
// import 'package:music_app/services/models/deezer_song_model.dart';

// class SongScreen extends StatelessWidget {
//   final DeezerSongModel song;
//   const SongScreen({Key key, @required this.song}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.deepOrange,
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//       ),
//       body: Container(
//         height: MediaQuery.of(context).size.height,
//         width: MediaQuery.of(context).size.width,
//         child: Column(
//           children: [
//             Container(
//               height: MediaQuery.of(context).size.height,
//               width: MediaQuery.of(context).size.width,
//               decoration: BoxDecoration(
//                   image: DecorationImage(
//                       image: song != null
//                           ? NetworkImage(song?.album?.coverMedium)
//                           : AssetImage('assets/astronaut.jpg'),
//                       fit: BoxFit.cover)),
//             ),
//             Expanded(
//               child: Container(
//                 padding: EdgeInsets.all(20),
//                 width: MediaQuery.of(context).size.width,
//                 color: Colors.black,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Container(
//                       height: 100,
//                       child: Column(
//                         children: [
//                           Expanded(
//                             child: Text(song?.title ?? '',
//                                 // overflow: TextOverflow.ellipsis,
//                                 style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 40,
//                                     fontWeight: FontWeight.w500)),
//                           ),
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                       height: 5,
//                     ),
//                     Text(song?.artist?.name ?? '',
//                         style: TextStyle(color: Colors.white, fontSize: 15))
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
