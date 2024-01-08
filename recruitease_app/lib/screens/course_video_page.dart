import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MyHomePage extends StatefulWidget {
  final String videoId;
  final String appBarTitle;

  MyHomePage({required this.videoId, required this.appBarTitle});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late YoutubePlayerController _controller;
  bool isFullScreen = false;
  double videoAspectRatio = 16 / 12;

  @override
  void initState() {
    super.initState();

    _controller = YoutubePlayerController(
      initialVideoId: widget.videoId,
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    )..addListener(() {
      if (_controller.value.isFullScreen != isFullScreen) {
        setState(() {
          isFullScreen = _controller.value.isFullScreen;
        });
        SystemChrome.setEnabledSystemUIMode(
          isFullScreen
              ? SystemUiMode.immersive
              : SystemUiMode.manual,
          overlays: [
            SystemUiOverlay.top,
            SystemUiOverlay.bottom,
          ],
        );
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [
      SystemUiOverlay.top,
      SystemUiOverlay.bottom,
    ]);

    return Scaffold(
      appBar: isFullScreen
          ? null
          : AppBar(
        title: Text(
          widget.appBarTitle,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          children: [
            buildVideoPlayer(),
            SizedBox(height: 16),
            // Add more video links or buttons as needed
          ],
        ),
      ),
    );
  }

  Widget buildVideoPlayer() {
    if (isFullScreen) {
      return LayoutBuilder(
        builder: (context, constraints) {
          final videoWidth = constraints.maxWidth;
          final videoHeight = videoWidth / videoAspectRatio;
          return Container(
            width: videoWidth,
            height: videoHeight,
            child: YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
              aspectRatio: videoWidth / videoHeight,
              onReady: () {
                _controller.play();
              },
            ),
          );
        },
      );
    } else {
      return YoutubePlayer(
        controller: _controller,
        showVideoProgressIndicator: true,
        onReady: () {
          _controller.play();
        },
      );
    }
  }
}
