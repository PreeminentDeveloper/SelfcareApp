import 'package:flutter/material.dart';

class VideoPlayer extends StatefulWidget {
  @override
  _VideoPlayerState createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> {
  bool isPlaying = false;

  Duration _duration = new Duration();
  Duration _position = new Duration();

  Widget slider() {
    return Slider(
      activeColor: Colors.white,
      inactiveColor: Colors.white,
      value: _position.inSeconds.toDouble(),
      min: 0.0,
      max: _duration.inSeconds.toDouble(),
      onChanged: (value) {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Icon(
                  Icons.close,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              color: Colors.grey,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 250,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage(
                        "lib/Assets/kidney.jpg",
                      ),
                    )),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (isPlaying == false) {
                        setState(() {
                          isPlaying = true;
                        });
                      } else {
                        setState(() {
                          isPlaying = false;
                        });
                      }
                    },
                    child: Icon(
                      isPlaying == false ? Icons.play_arrow : Icons.pause,
                      color: Colors.white,
                      size: 60,
                    ),
                  )
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                height: 30,
                color: Colors.grey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.volume_up,
                      color: Colors.white,
                      size: 20,
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width - 50,
                        child: slider()),
                    Icon(
                      Icons.zoom_out_map,
                      color: Colors.white,
                      size: 20,
                    ),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Python: Code Programming",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "by Michael Dallas",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
