import "package:bitsdojo_window/bitsdojo_window.dart";
import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:login_test/widgets/gradient_button.dart";
import "package:login_test/widgets/social_button.dart";
import "package:login_test/widgets/text_box.dart";
import "package:login_test/widgets/window_buttons.dart";

class TestApp3 extends StatelessWidget {
  const TestApp3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConstrainedBox(
        constraints: BoxConstraints.expand(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
        ),
        child: Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              Column(
                children: [
                  Visibility(
                    visible: (kIsWeb) ? false : true,
                    child: Row(
                      children: [
                        SizedBox(
                            height: 35,
                            width: MediaQuery.of(context).size.width,
                            child: WindowTitleBarBox(
                              child: MoveWindow(
                                child: const WindowButtons(),
                              ),
                            )),
                      ],
                    ),
                  ),
                  Stack(
                    alignment: AlignmentDirectional.center,
                    children: <Widget>[
                      ClipRect(
                        child: Align(
                          alignment: Alignment.topCenter,
                          heightFactor: 1,
                          child: Image.asset(
                            'assets/images/architecture.jpg',
                            fit: BoxFit.cover,
                            isAntiAlias: true,
                            height: MediaQuery.of(context).size.height - 35,
                            width: MediaQuery.of(context).size.width,
                          ),
                        ),
                      ),
                      Positioned(
                        // top: 100,
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.7,
                          width: MediaQuery.of(context).size.width * 0.7,
                          color: Colors.transparent,
                          child: SizedBox(
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: 500,
                                    blurRadius: 1022,
                                    offset: const Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Sign in',
                              style: GoogleFonts.pacifico(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 45,
                                  color: Colors.white.withOpacity(1),
                                ),
                              )),
                          const SizedBox(
                            height: 20,
                          ),
                          SocialButton(
                            onPressed: () {},
                            horizontalPadding: 90,
                            iconPath: 'assets/svgs/f_logo.svg',
                            label: 'Continue with Facebook',
                          ),
                          const SizedBox(height: 10),
                          SocialButton(
                            onPressed: () {},
                            iconPath: 'assets/svgs/g_logo.svg',
                            label: 'Continue with Google',
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'OR',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white.withOpacity(0.7)),
                          ),
                          const SizedBox(height: 10),
                          const LoginField(
                            hintText: 'Email',
                          ),
                          const SizedBox(height: 15),
                          const LoginField(
                            hintText: 'Password',
                            obscureText: true,
                          ),
                          const SizedBox(height: 30),
                          GradientButton(
                            label: 'Sign in',
                            onPressed: () {},
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
