import 'package:flutter/material.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:music_app/utils.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Music Player App',
      home: Player(),
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: Colors.red),
        iconTheme: IconThemeData(color: Colors.red),
      ),
    );
  }
}

class Player extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4EFF6),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Utils().appBar(context),
            Utils().albumImage(context),
            Utils().songName(),
            Utils().progressBar(),
            Utils().songTime(),
            Utils().songButton(),
          ],
        ),
      ),
    );
  }
}
