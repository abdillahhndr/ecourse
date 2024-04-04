import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Expanded(
              child: HalfScreenVideo(),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.0),
                  topRight: Radius.circular(50.0),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 30, left: 10),
                    child: Text(
                      '',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Center(
                    child: Container(
                      padding: EdgeInsets.all(16),
                      width: 400,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 253, 253, 253),
                        borderRadius: BorderRadius.circular(8.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Stack(
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 115,
                                height: 115,
                                color: Color.fromARGB(255, 8, 8, 8),
                              ),
                              SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Graphic Design',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10,
                                      color: Colors.orange,
                                    ),
                                  ),
                                  Text(
                                    'Design Principles: Organizing ..',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    '\$28',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: Colors.blue,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    children: [
                                      Icon(Icons.star,
                                          color: Colors.yellow, size: 14),
                                      SizedBox(width: 5),
                                      Text(
                                        '4.0 | 7830 Std',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Positioned(
                            top: 0,
                            right: 0,
                            child: IconButton(
                              icon: Icon(Icons.save),
                              color: Colors.green,
                              onPressed: () {
                                // Add your save functionality here
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HalfScreenVideo extends StatefulWidget {
  @override
  _HalfScreenVideoState createState() => _HalfScreenVideoState();
}

class _HalfScreenVideoState extends State<HalfScreenVideo> {
  late VideoPlayerController _controller;
  bool _isPlaying = false;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(
      'assets/sample_video.mp4', // Ganti dengan path video Anda
    )..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2, // Setengah lebar layar
      height: MediaQuery.of(context).size.height / 2, // Setengah tinggi layar
      color: Colors.black, // Warna latar belakang
      child: Stack(
        children: [
          // Video Player
          _controller.value.isInitialized
              ? AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                )
              : Container(),
          // Ikon televisi untuk memulai video
          _isPlaying
              ? Container() // Jika sedang memainkan video, tampilkan kontainer kosong
              : Positioned.fill(
                  child: Align(
                    alignment: Alignment.center,
                    child: IconButton(
                      icon: Icon(Icons.play_circle_filled_sharp,
                          size: 64, color: Color.fromARGB(255, 255, 255, 255)),
                      onPressed: () {
                        // Memulai video jika belum diputar
                        setState(() {
                          _isPlaying = true;
                        });
                        _controller.play();
                      },
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
