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
    //Сдесь указывается функции которые сработают после загрузки видео с интернета
        Uri.parse('https://cdn.discordapp.com/attachments/761299040851460108/1178430651058368512/1.mp4'))
      ..initialize().then((_) {
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
        child: Column(
          //Чтобы было по центру экрана
          mainAxisAlignment: MainAxisAlignment.center,
          //Пороверка загрузилось ли видео
          children: <Widget>[
            _controller.value.isInitialized
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
            //Кнопки
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0), // Отступ слева и справа
                  child: ElevatedButton(
                    onPressed: () {
                      //Функция чтобы видео начиналось проигывыаться
                      _controller.play();
                    },
                    child: Text('Старт'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0), // Отступ слева и справа
                  child: ElevatedButton(
                    onPressed: () {
                      //Функция чтобы видео остановилось
                      _controller.pause();
                    },
                    child: Text('Пауза'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0), // Отступ слева и справа
                  child: ElevatedButton(
                    onPressed: () {
                      //Функции чтобы видео начило проигывыаться с начала
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
  //Скажите что видели что так делали в интернете и не знаете зачем это, но это важно
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}