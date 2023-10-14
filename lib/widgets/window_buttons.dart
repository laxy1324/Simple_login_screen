import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';

class WindowButtons extends StatelessWidget {
  const WindowButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        MinimizeWindowButton(
          colors: WindowButtonColors(
            iconNormal: Colors.white,
            mouseOver: Colors.black.withOpacity(0.2),
            mouseDown: Colors.white.withOpacity(0.1),
          ),
        ),
        MaximizeWindowButton(
          colors: WindowButtonColors(
            iconNormal: Colors.white,
            mouseOver: Colors.black.withOpacity(0.2),
            mouseDown: Colors.white.withOpacity(0.1),
          ),
        ),
        CloseWindowButton(
          colors: WindowButtonColors(
            iconNormal: Colors.white,
            mouseOver: Colors.black.withOpacity(0.2),
            mouseDown: Colors.white.withOpacity(0.1),
          ),
        ),
      ],
    );
  }
}
