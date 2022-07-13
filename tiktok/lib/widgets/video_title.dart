import 'package:flutter/material.dart';
import 'package:tiktok/models/video.dart';
import 'package:video_player/video_player.dart';

class VideoTitle extends StatefulWidget {
  const VideoTitle({Key? key, required this.video}) : super(key: key);
  final Video video;

  @override
  State<VideoTitle> createState() => _VideoTitleState();
}

class _VideoTitleState extends State<VideoTitle> {
  late VideoPlayerController _videoController;
  late Future _initializeVideoPlayer;

  @override
  void initState() {
    _videoController =
        VideoPlayerController.asset('assets/${widget.video.videoUrl}');
    _initializeVideoPlayer = _videoController.initialize();
    _videoController.setLooping(true);
    _videoController.play();
    super.initState();
  }

  @override
  void dispose() {
    _videoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: FutureBuilder(
        future: _initializeVideoPlayer,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return VideoPlayer(_videoController);
          } else {
            return Container(
              color: Colors.pink,
            );
          }
        },
      ),
    );
  }
}
