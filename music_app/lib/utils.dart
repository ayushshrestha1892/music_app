import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_app/songrecognition.dart';

class Utils {
  Widget appBar(BuildContext context) {
    return Row(
      children: [
        Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                color: Color(0xFFF4EFF6),
                borderRadius: BorderRadius.circular(100.0),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.2),
                    spreadRadius: 3.0,
                    blurRadius: 6.0,
                    offset: Offset(6, 2),
                  ),
                  BoxShadow(
                    color: Color.fromRGBO(255, 255, 255, 0.9),
                    spreadRadius: 3.0,
                    blurRadius: 6.0,
                    offset: Offset(-6, -2),
                  )
                ]),
            child: Icon(Icons.folder)),
        Expanded(
            child: Text(
          "Playing Now",
          textAlign: TextAlign.center,
        )),
        Container(
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              color: Color(0xFFF4EFF6),
              borderRadius: BorderRadius.circular(100.0),
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.2),
                  spreadRadius: 3.0,
                  blurRadius: 6.0,
                  offset: Offset(6, 2),
                ),
                BoxShadow(
                  color: Color.fromRGBO(255, 255, 255, 0.9),
                  spreadRadius: 3.0,
                  blurRadius: 6.0,
                  offset: Offset(-6, -2),
                )
              ]),
          child: IconButton(
            icon: Icon(Icons.more_horiz),
            onPressed: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => SongRecognition()));
            },
          ),
        ),
      ],
    );
  }

  Widget albumImage(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3.5,
      width: MediaQuery.of(context).size.height / 3.5,
      margin: EdgeInsets.all(50.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(300.0),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/astronaut.jpg'),
        ),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.2),
            spreadRadius: 3.0,
            blurRadius: 6.0,
            offset: Offset(6, 2),
          ),
          BoxShadow(
            color: Color.fromRGBO(255, 255, 255, 0.9),
            spreadRadius: 3.0,
            blurRadius: 6.0,
            offset: Offset(-6, -2),
          )
        ],
        border: Border.all(color: Colors.grey.shade300, width: 10.0),
      ),
    );
  }

  Widget songName() {
    return Column(
      children: [
        Text(
          "Save Your Tears",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
        ),
        Text(
          'The Weeknd ',
          style: TextStyle(fontSize: 13.0),
        ),
      ],
    );
  }

  Widget progressBar() {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
      child: Stack(
        children: [
          Container(
            height: 10.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              border: Border.all(color: Colors.white),
              color: Colors.white,
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.grey.shade400,
                    Colors.white,
                  ]),
            ),
          ),
          Container(
            height: 10.0,
            width: 80.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              border: Border.all(color: Colors.white),
              color: Colors.white,
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.white70,
                    Colors.grey.shade700,
                  ]),
            ),
          ),
        ],
      ),
    );
  }

  Widget songTime() {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 0.0),
      child: Row(
        children: [
          Expanded(
            child: Text("0:00"),
          ),
          Expanded(
            child: Text(
              "3:10",
              textAlign: TextAlign.right,
            ),
          ),
        ],
      ),
    );
  }

  Widget songButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                color: Color(0xFFF4EFF6),
                borderRadius: BorderRadius.circular(100.0),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.2),
                    spreadRadius: 3.0,
                    blurRadius: 6.0,
                    offset: Offset(6, 2),
                  ),
                  BoxShadow(
                    color: Color.fromRGBO(255, 255, 255, 0.9),
                    spreadRadius: 3.0,
                    blurRadius: 6.0,
                    offset: Offset(-6, -2),
                  )
                ]),
            child: Icon(CupertinoIcons.heart_solid)),
        Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                color: Color(0xFFF4EFF6),
                borderRadius: BorderRadius.circular(100.0),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.2),
                    spreadRadius: 3.0,
                    blurRadius: 6.0,
                    offset: Offset(6, 2),
                  ),
                  BoxShadow(
                    color: Color.fromRGBO(255, 255, 255, 0.9),
                    spreadRadius: 3.0,
                    blurRadius: 6.0,
                    offset: Offset(-6, -2),
                  )
                ]),
            child: Icon(
              Icons.fast_rewind,
              size: 40.0,
            )),
        Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                color: Color(0xFFF4EFF6),
                borderRadius: BorderRadius.circular(100.0),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.2),
                    spreadRadius: 3.0,
                    blurRadius: 6.0,
                    offset: Offset(6, 2),
                  ),
                  BoxShadow(
                    color: Color.fromRGBO(255, 255, 255, 0.9),
                    spreadRadius: 3.0,
                    blurRadius: 6.0,
                    offset: Offset(-6, -2),
                  )
                ]),
            child: Icon(
              Icons.play_arrow_rounded,
              size: 50.0,
            )),
        Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                color: Color(0xFFF4EFF6),
                borderRadius: BorderRadius.circular(100.0),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.2),
                    spreadRadius: 3.0,
                    blurRadius: 6.0,
                    offset: Offset(6, 2),
                  ),
                  BoxShadow(
                    color: Color.fromRGBO(255, 255, 255, 0.9),
                    spreadRadius: 3.0,
                    blurRadius: 6.0,
                    offset: Offset(-6, -2),
                  )
                ]),
            child: Icon(
              Icons.fast_forward,
              size: 40.0,
            )),
        Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                color: Color(0xFFF4EFF6),
                borderRadius: BorderRadius.circular(100.0),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.2),
                    spreadRadius: 3.0,
                    blurRadius: 6.0,
                    offset: Offset(6, 2),
                  ),
                  BoxShadow(
                    color: Color.fromRGBO(255, 255, 255, 0.9),
                    spreadRadius: 3.0,
                    blurRadius: 6.0,
                    offset: Offset(-6, -2),
                  )
                ]),
            child: Icon(
              Icons.shuffle,
              size: 25.0,
            )),
      ],
    );
  }
}
