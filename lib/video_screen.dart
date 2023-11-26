import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoScreen extends StatefulWidget {
  @override
  _VideoScreenState createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  late VideoPlayerController _controller = VideoPlayerController.networkUrl(
        Uri.parse('https://cdn.discordapp.com/attachments/761299040851460108/1178424184074940608/Rick_Astley_-_Never_Gonna_Give_You_Up_Official_Music_Video.mp4'))
      ..initialize().then((_) {
        _controller.play();
        setState(() {});
      });

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Воспроизведение видео из интернета'),
      ),
      body: Center(
        child: _controller.value.isInitialized
            ? AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              )
            : CircularProgressIndicator(),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}