import 'package:flutter/material.dart';
import '../pallete.dart';

class GradientButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;

  const GradientButton(
      {super.key, required this.onPressed, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border:
            Border.all(color: Pallete.whiteColor.withOpacity(0.5), width: 1.4),
        gradient: LinearGradient(
          colors: [
            Pallete.gradient1.withOpacity(0.5),
            Pallete.gradient2.withOpacity(0.5),
            Pallete.gradient3.withOpacity(0.5)
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
        borderRadius: BorderRadius.circular(7),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            fixedSize: const Size(395, 55),
            backgroundColor: Colors.transparent),
        child: Text(label,
            style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 17)),
      ),
    );
  }
}
