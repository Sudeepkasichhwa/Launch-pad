import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Launch Pad",
          ),
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        body: const Wrap(
          children: [Pad(Color(0xffaadbfc), Color(0xff067ccb), "audio_2.mp3")],
        ),
        backgroundColor: Colors.black,
      ),
    );
  }
}

class Pad extends StatefulWidget {
  final colorCenter;
  final colorOutline;
  final note;

  const Pad(this.colorCenter, this.colorOutline, this.note, {super.key});

  @override
  State<Pad> createState() => _PadState();
}

class _PadState extends State<Pad> {
  late Color _colorCenter;
  late Color _colorOutline;
  final player = AudioPlayer();

  @override
  void initState() {
    _colorCenter = widget.colorCenter;
    _colorOutline = widget.colorOutline;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        setState(() {
          _colorCenter = Colors.white;
          _colorOutline = Colors.white;
          player.play(AssetSource("audio_1.mp3"));
        });

        await Future.delayed(const Duration(milliseconds: 300));

        setState(() {
          _colorCenter = widget.colorCenter;
          _colorOutline = widget.colorOutline;
        });
      },
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
            gradient: RadialGradient(
              colors: [_colorCenter, _colorOutline],
              radius: 0.5,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(8.0)),
            boxShadow: const [
              BoxShadow(color: Colors.pinkAccent, blurRadius: 8.0)
            ]),
      ),
    );
  }
}
