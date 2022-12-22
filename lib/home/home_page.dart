import 'package:flutter/material.dart';
import '../components/black_button.dart';
import '../components/white_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: const Text('Flutter Piano'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Expanded(
            child: Center(
              child: Text('do re mi fa...'),
            ),
          ),
          Expanded(
            flex: 3,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Stack(children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        PianoWhiteButton(nameNotes: 'do'),
                        PianoWhiteButton(nameNotes: 're'),
                        PianoWhiteButton(nameNotes: 'mi'),
                        PianoWhiteButton(nameNotes: 'fa'),
                        PianoWhiteButton(nameNotes: 'si'),
                        PianoWhiteButton(nameNotes: 'sol'),
                        PianoWhiteButton(nameNotes: 'lya'),
                      ],
                    ),
                    Positioned(
                      left: 45.0,
                      right: 0.0,
                      child: Row(
                        children: const [
                          PianoBlackButton(nameNotes: 'do'),
                          PianoBlackButton(nameNotes: 're'),
                          PianoBlackButton(visible: false, nameNotes: 'mi'),
                          PianoBlackButton(nameNotes: 'fa'),
                          PianoBlackButton(nameNotes: 'sol'),
                          PianoBlackButton(nameNotes: 'lya'),
                          // PianoBlackButton(),
                        ],
                      ),
                    ),
                  ]);
                }),
          ),
        ],
      ),
    );
  }
}
