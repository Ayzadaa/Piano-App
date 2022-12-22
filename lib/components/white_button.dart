import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class PianoWhiteButton extends StatelessWidget {
  const PianoWhiteButton({
    Key? key,
    required this.nameNotes,
  }) : super(key: key);
  final String nameNotes;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: SizedBox(
          width: 80,
          height: 200,
          child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.resolveWith((states) => Colors.white),
                overlayColor: MaterialStateProperty.resolveWith((states) =>
                    states.contains(MaterialState.pressed)
                        ? const Color.fromARGB(70, 121, 117, 117)
                        : null)),
            onPressed: () {
              AudioPlayer().play(
                AssetSource('notes/$nameNotes.mp3'),
              );
            },
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Text(
                  nameNotes,
                  style: const TextStyle(color: Colors.black),
                ),
              ),
            ),
          )),
    );
  }
}
