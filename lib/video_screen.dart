import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class AudioPlayerScreen extends StatefulWidget {
  @override
  _AudioPlayerScreenState createState() => _AudioPlayerScreenState();
}

class _AudioPlayerScreenState extends State<AudioPlayerScreen> {
  AudioPlayer audioPlayer1 = AudioPlayer();
AudioPlayer audioPlayer2 = AudioPlayer();
AudioPlayer audioPlayer3 = AudioPlayer();
bool isPlaying1 = false;
bool isPlaying2 = false;
bool isPlaying3 = false; // Добавляем переменную для отслеживания состояния воспроизведения

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

  Widget audioControl(String title, String audioUrl, AudioPlayer audioPlayer, bool isPlaying) {
    return Card(
      child: Column(
        children: [
          ListTile(
            title: Text(title),
            leading: IconButton(
              icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow),
              onPressed: () => togglePlayPause(audioPlayer, audioUrl, isPlaying),
            ),
            trailing: IconButton(
              icon: Icon(Icons.stop),
              onPressed: () => stopAudio(audioPlayer, isPlaying),
            ),
          ),
        ],
      ),
    );
  }

  void togglePlayPause(AudioPlayer audioPlayer, String fileName, bool isPlaying) {
  if (isPlaying) {
    audioPlayer.pause();
  } else {
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

  @override
  void dispose() {
    audioPlayer1.dispose();
    audioPlayer2.dispose();
    audioPlayer3.dispose();
    super.dispose();
  }
}
