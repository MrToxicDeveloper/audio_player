import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/widgets.dart';

class AudioProvider extends ChangeNotifier {
  bool icon = true;
  bool mute = true;

  AssetsAudioPlayer? audioplayer;

  void load() {
    audioplayer = AssetsAudioPlayer();

    audioplayer!.open(Audio("assets/music/Montero.mp3"),
        autoStart: false, showNotification: true);
  }

  Future<void> playOrPause() async {
    await audioplayer!.playOrPause();
    icon == true ? icon = false : icon = true;
    notifyListeners();
  }
}
