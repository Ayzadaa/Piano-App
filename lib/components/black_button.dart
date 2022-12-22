import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class PianoBlackButton extends StatelessWidget {
  const PianoBlackButton({
    this.visible = true,
    Key? key,
    required this.nameNotes,
  }) : super(key: key);
  final String nameNotes;
  final bool visible;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7.0),
      child: SizedBox(
        width: 65,
        height: 130,
        child: Visibility(
          visible: visible,
          child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.resolveWith((states) => Colors.black),
                overlayColor: MaterialStateProperty.resolveWith((states) =>
                    states.contains(MaterialState.pressed)
                        ? Color.fromARGB(70, 121, 117, 117)
                        : null)),
            onPressed: () {
              AudioPlayer().play(
                AssetSource('notes/$nameNotes.mp3'),
              );
            },
            child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Text(
                    nameNotes,
                  ),
                )),
          ),
        ),
      ),
    );
  }
}
