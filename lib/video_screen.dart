import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
//Создаем StatefulWidget, чтобы экран после нажатию на кнопку обновлялся
class AudioPlayerScreen extends StatefulWidget {
  @override
  _AudioPlayerScreenState createState() => _AudioPlayerScreenState();
}

class _AudioPlayerScreenState extends State<AudioPlayerScreen> {
  //Указываем переменный для каждого аудио файла
  AudioPlayer audioPlayer1 = AudioPlayer();
  AudioPlayer audioPlayer2 = AudioPlayer();
  AudioPlayer audioPlayer3 = AudioPlayer();
  // Добавляем переменныt для отслеживания состояния воспроизведения
  bool isPlaying1 = false;
  bool isPlaying2 = false;
  bool isPlaying3 = false; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Audio Player"),
      ),
      body: Column(
        children: <Widget>[
          audioControl('Audio 1', 'cool-music.MP3', audioPlayer1, isPlaying1),
          audioControl('Audio 2', 'open.mp3', audioPlayer2, isPlaying2),
          audioControl('Audio 3', 'slovo.mp3', audioPlayer3, isPlaying3),
        ],
      ),
    );
  }
  //Создаем виджет, чтобы не повторяться в коде. Так же этот виджет делает внешний вид для проигрывания
  Widget audioControl(String title, String audioUrl, AudioPlayer audioPlayer, bool isPlaying) {
    return Card(
      child: Column(
        children: [
          ListTile(
            title: Text(title),
            leading: IconButton(
              //Иконки и функции которые меняются в зависимсоти от проигывается ли песня или нет
              icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow),
              onPressed: () => togglePlayPause(audioPlayer, audioUrl, isPlaying),
            ),
            trailing: IconButton(
              icon: Icon(Icons.stop),
              //Полностью останавливает проигрывание и песня при повторном запуске начинается заного
              onPressed: () => stopAudio(audioPlayer, isPlaying),
            ),
          ),
        ],
      ),
    );
  }
//Функция для проигрывания или паузы песни в зависимсоти от передваемых данных
  void togglePlayPause(AudioPlayer audioPlayer, String fileName, bool isPlaying) {
  if (isPlaying) {
    //Ставим на паузу
    audioPlayer.pause();
  } else {
    //Начинаем проигрывать
    audioPlayer.play(AssetSource(fileName));
  }
  setState(() {
    if (audioPlayer == audioPlayer1) isPlaying1 = !isPlaying;
    if (audioPlayer == audioPlayer2) isPlaying2 = !isPlaying;
    if (audioPlayer == audioPlayer3) isPlaying3 = !isPlaying;
  });
}

void stopAudio(AudioPlayer audioPlayer, bool isPlaying) {
  audioPlayer.stop();
  setState(() {
    if (audioPlayer == audioPlayer1) isPlaying1 = false;
    if (audioPlayer == audioPlayer2) isPlaying2 = false;
    if (audioPlayer == audioPlayer3) isPlaying3 = false;
  });
}
//Скажите что видели что так делали в интернете и не знаете зачем это, но это важно
  @override
  void dispose() {
    audioPlayer1.dispose();
    audioPlayer2.dispose();
    audioPlayer3.dispose();
    super.dispose();
  }
}
