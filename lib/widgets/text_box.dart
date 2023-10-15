import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import '../pallete.dart';
import 'package:english_words/english_words.dart';

class LoginField extends StatelessWidget {
  /// ## <u>LoginField</u>
  /// creates a custom TextField for Login and Sign Up Screen which allows a sleak modern Textfield to be created.
  ///  Allows for obscure text, prefix icons, filled textboxes, and more.
  ///
  /// **<u>EXAMPLE PASSWORD FIELD</u>**
  /// ```dart
  /// LoginField(
  ///   prefixIcon: const Icon(CupertinoIcons.lock),
  ///   obscureText: true,
  ///   filled: true,
  ///   fillColor: Colors.blueGrey.withOpacity(0.2),
  ///   cursorColor: Colors.white,
  ///   floatingLabelText: 'Password'
  /// ),
  /// ```

  const LoginField({
    super.key,
    this.hintText,
    required this.obscureText,
    this.prefixIcon,
    this.prefixIconColor,
    this.filled,
    this.fillColor,
    this.cursorColor,
    this.floatingLabelStyle,
    this.floatingLabelText,
    this.hintsStyle,
    this.focusNode,
    this.contentPadding,
    this.inputDecoration,
    this.mouseCursor,
    this.textAlign,
    this.style,
  });
  final TextStyle? style;
  final TextAlign? textAlign;
  final MouseCursor? mouseCursor;
  final String? hintText;
  final bool obscureText;
  final Icon? prefixIcon;
  final Color? prefixIconColor;
  final bool? filled;
  final Color? fillColor;
  final Color? cursorColor;
  final String? floatingLabelText;
  final TextStyle? floatingLabelStyle;
  final TextStyle? hintsStyle;
  final FocusNode? focusNode;
  final EdgeInsetsGeometry? contentPadding;
  final InputDecoration? inputDecoration;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 400),
      child: TextFormField(
        mouseCursor: mouseCursor,
        textAlign: textAlign ?? TextAlign.start,
        cursorColor: cursorColor,
        obscureText: obscureText,
        style: style ?? GoogleFonts.robotoCondensed(fontSize: 16),
        focusNode: focusNode ??
            FocusNode(
              onKey: (node, event) {
                final word = WordPair.random();
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
        decoration: inputDecoration ??
            InputDecoration(
              labelText: floatingLabelText,
              floatingLabelStyle: floatingLabelStyle ??
                  GoogleFonts.roboto(
                    textStyle: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
              filled: filled,
              fillColor: fillColor,
              prefixIcon: prefixIcon,
              prefixIconColor: prefixIconColor ?? Colors.white,
              hintText: hintText,
              hintStyle: hintsStyle ??
                  GoogleFonts.robotoCondensed(
                    textStyle: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
              contentPadding: contentPadding ??
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
