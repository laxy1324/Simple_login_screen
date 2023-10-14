import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../pallete.dart';
import 'package:english_words/english_words.dart';

class LoginField extends StatelessWidget {
  const LoginField({
    super.key,
    this.hintText = '',
    this.obscureText = false,
  });

  final String hintText;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    final word = WordPair.random();
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 400),
      child: TextFormField(
        obscureText: obscureText,
        focusNode: FocusNode(
          onKey: (node, event) {
            if (event.isKeyPressed(LogicalKeyboardKey.keyC) &&
                    event.isControlPressed &&
                    obscureText == true ||
                (event.isKeyPressed(LogicalKeyboardKey.keyX) &&
                    event.isControlPressed &&
                    obscureText == true)) {
              Clipboard.setData(ClipboardData(
                  text: 'Nice try, Bucko! Here is a random word: $word'));
              return KeyEventResult.handled;
            }
            if (event.isKeyPressed(LogicalKeyboardKey.enter)) {
              FocusScope.of(context).nextFocus();
              return KeyEventResult.handled;
            } else if (event.isKeyPressed(LogicalKeyboardKey.tab)) {
              FocusScope.of(context).nextFocus();
              return KeyEventResult.handled;
            } else if (event.isKeyPressed(LogicalKeyboardKey.arrowDown)) {
              FocusScope.of(context).nextFocus();
              return KeyEventResult.handled;
            } else if (event.isKeyPressed(LogicalKeyboardKey.arrowUp)) {
              FocusScope.of(context).previousFocus();
              return KeyEventResult.handled;
            } else {
              return KeyEventResult.ignored;
            }
            // return;
          },
        ),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: Pallete.whiteColor.withOpacity(0.8)),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 20, horizontal: 23),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Pallete.whiteColor.withOpacity(1),
              width: 1.7,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Pallete.whiteColor.withOpacity(0.3),
              width: 1.5,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
    );
  }
}
