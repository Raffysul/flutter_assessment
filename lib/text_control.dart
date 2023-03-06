import 'package:flutter/material.dart';
import 'package:flutter_assessment/text_output.dart';

class TextControl extends StatefulWidget {
  const TextControl({Key? key}) : super(key: key);

  @override
  State<TextControl> createState() => _TextControlState();
}

class _TextControlState extends State<TextControl> {
  String _mainText = 'My Flutter Assessment!!!';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            setState(() {
              _mainText = 'This changed!!!';
            });
          },
          child: const Text('Change Text'),
        ),
        TextOutput(mainText: 'My Flutter Assessment',)
      ],
    );
  }
}
