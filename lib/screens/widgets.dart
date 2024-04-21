import 'package:flutter/material.dart';

class TextSetting extends StatefulWidget {
  const TextSetting({super.key});

  @override
  State<TextSetting> createState() => _TextSettingState();
}

class _TextSettingState extends State<TextSetting> {
  double fontSize = 16;
  @override
  Widget build(BuildContext context) {
    return Slider(
      activeColor: Colors.green,
      inactiveColor: Colors.yellow,
      thumbColor: Colors.red,
      label: '${fontSize}ff',
      value: fontSize,
      min: 16,
      max: 45,
      onChanged: (value) {
        setState(() {
          fontSize = value;
        });
      },
    );
  }
}
