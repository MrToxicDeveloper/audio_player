import 'package:audio_player/screens/audio_player/provider/audio_provider.dart';
import 'package:audio_player/screens/audio_player/view/audio_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AudioProvider(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => AudioPlayer(),
        },
      ),
    ),
  );
}
