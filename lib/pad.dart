import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Pad extends StatefulWidget {
  final Color colorCenter;
  final Color colorOutline;
  final String audioNote;

  const Pad(this.colorCenter, this.colorOutline, this.audioNote, {super.key});

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
    double padWidth = MediaQuery.of(context).size.width;
    double padHeight = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () async {
        setState(() {
          player.play(AssetSource(widget.audioNote));
          _colorCenter = Colors.white;
          _colorOutline = Colors.white;
        });

        await Future.delayed(const Duration(milliseconds: 300));

        setState(() {
          _colorCenter = widget.colorCenter;
          _colorOutline = widget.colorOutline;
        });
      },
      child: Container(
        height: padHeight / 4.95,
        width: padWidth / 3.33,
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [_colorCenter, _colorOutline],
            radius: 0.5,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(8.0)),
          boxShadow: const [
            BoxShadow(color: Color.fromARGB(255, 237, 59, 113), blurRadius: 6.0)
          ],
        ),
      ),
    );
  }
}
