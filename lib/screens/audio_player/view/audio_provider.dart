import 'package:audio_player/screens/audio_player/provider/audio_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AudioPlayer extends StatefulWidget {
  const AudioPlayer({Key? key}) : super(key: key);

  @override
  State<AudioPlayer> createState() => _AudioPlayerState();
}

class _AudioPlayerState extends State<AudioPlayer> {
  @override
  void initState() {
    super.initState();

    Provider.of<AudioProvider>(context, listen: false).load();
  }

  AudioProvider? ProTrue;
  AudioProvider? ProFalse;

  @override
  Widget build(BuildContext context) {
    ProTrue = Provider.of<AudioProvider>(context, listen: true);
    ProFalse = Provider.of<AudioProvider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff1d1d26),
        body: Column(
          children: [
            Expanded(
              flex: 2,
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(color: Colors.white12, blurRadius: 10),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    child: Image.asset(
                      "assets/images/montero.jpg",
                      height: 250,
                      width: 250,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                height: 225,
                alignment: Alignment.center,
                width: double.infinity,
                color: Colors.black45,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: ProTrue!.mute == true
                                ? Icon(
                                    Icons.mic,
                                    color: Colors.white,
                                    size: 60,
                                  )
                                : Icon(
                                    Icons.mic_off,
                                    color: Colors.white,
                                    size: 60,
                                  )),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.skip_previous,
                            size: 60,
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            ProFalse!.playOrPause();
                          },
                          icon: ProTrue!.icon == true
                              ? Icon(
                                  Icons.play_arrow,
                                  color: Colors.white,
                                  size: 60,
                                )
                              : Icon(
                                  Icons.pause,
                                  color: Colors.white,
                                  size: 60,
                                ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.skip_next,
                            size: 60,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      child: Slider(
                        value: 0.5,
                        inactiveColor: Colors.white38,
                        activeColor: Colors.white,
                        onChanged: (value) {},
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
