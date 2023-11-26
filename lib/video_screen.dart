import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoScreen extends StatefulWidget {
  @override
  _VideoScreenState createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  late VideoPlayerController _controller = VideoPlayerController.networkUrl(
        Uri.parse('https://cdn.discordapp.com/attachments/761299040851460108/1178430651058368512/1.mp4'))
      ..initialize().then((_) {
        setState(() {});
      });

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Воспроизведение видео из интернета'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _controller.value.isInitialized
                ? AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(_controller),
                  )
                : CircularProgressIndicator(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0), // Отступ слева и справа
                  child: ElevatedButton(
                    onPressed: () {
                      _controller.play();
                    },
                    child: Text('Старт'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0), // Отступ слева и справа
                  child: ElevatedButton(
                    onPressed: () {
                      _controller.pause();
                    },
                    child: Text('Пауза'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0), // Отступ слева и справа
                  child: ElevatedButton(
                    onPressed: () {
                      _controller.seekTo(Duration.zero);
                      _controller.pause();
                    },
                    child: Text('Стоп'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}