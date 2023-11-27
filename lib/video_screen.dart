import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
//Создаем StatefulWidget, чтобы экран после нажатию на кнопку обновлялся
class VideoScreen extends StatefulWidget {
  @override
  _VideoScreenState createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  //Создаем контроллер в котором хранится видио
  late VideoPlayerController _controller = VideoPlayerController.networkUrl(
        // Сдесь указывается ссылка
        Uri.parse('https://cdn.discordapp.com/attachments/761299040851460108/1178430651058368512/1.mp4'))
        //Сдесь указывается функции которые сработают после загрузки видео с интернета
      ..initialize().then((_) {
        //Видио начинает проигрываться
        _controller.play();
        //Обновляется экран
        setState(() {});
      });

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Воспроизведение видео из интернета'),
      ),
      body: Center(
        //Пороверка загрузилось ли видео
        child: _controller.value.isInitialized
            ?
            //Когда видео загрузилось срабатывает данный код
            AspectRatio(
              //Выставляем размер в зависимости от размера контролера
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              )
            : 
            //Пока видео не загрузилось работает этот код
            CircularProgressIndicator(),
      ),
    );
  }
  //Скажите что видели что так делали в интернете и не знаете зачем это, но это важно
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
