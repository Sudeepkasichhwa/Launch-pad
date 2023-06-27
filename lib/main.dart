import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:launch_pad/pad.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Launch Pad",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Launch Pad",
            style: GoogleFonts.bebasNeue(fontSize: 30.0),
          ),
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        body: const Center(
          child: Wrap(
            spacing: 10.0,
            runSpacing: 10.0,
            clipBehavior: Clip.antiAlias,
            children: [
              Pad(Color(0xffaadbfc), Color(0xff067ccb), "audio_1.mp3"),
              Pad(Color.fromARGB(255, 170, 252, 181),
                  Color.fromARGB(255, 203, 75, 6), "audio_3.mp3"),
              Pad(Color(0xffaadbfc), Color(0xff067ccb), "audio_2.mp3"),
              Pad(Color.fromARGB(255, 181, 170, 252),
                  Color.fromARGB(255, 193, 6, 203), "audio_10.mp3"),
              Pad(Color(0xffaadbfc), Color(0xff067ccb), "audio_6.mp3"),
              Pad(Color.fromARGB(255, 252, 251, 170),
                  Color.fromARGB(255, 203, 6, 9), "audio_8.mp3"),
              Pad(Color(0xffaadbfc), Color(0xff067ccb), "audio_7.mp3"),
              Pad(Color.fromARGB(255, 170, 188, 252),
                  Color.fromARGB(255, 6, 203, 39), "audio_5.mp3"),
              Pad(Color(0xffaadbfc), Color(0xff067ccb), "audio_9.mp3"),
              Pad(Color.fromARGB(255, 252, 251, 170),
                  Color.fromARGB(255, 203, 6, 9), "audio_8.mp3"),
              Pad(Color(0xffaadbfc), Color(0xff067ccb), "audio_7.mp3"),
              Pad(Color.fromARGB(255, 181, 170, 252),
                  Color.fromARGB(255, 193, 6, 203), "audio_10.mp3"),
            ],
          ),
        ),
        backgroundColor: Colors.black12,
      ),
    );
  }
}
