// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/DailyHighlight.dart';
import 'package:flutter_application_1/MyHealth.dart';
import 'package:flutter_application_1/MyJournal.dart';
import 'package:flutter_application_1/QuoteScreen.dart';

void main() {
  runApp(const Robbin());
}

class Robbin extends StatelessWidget {
  const Robbin({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BeYou',
      theme:
          ThemeData(scaffoldBackgroundColor: Color.fromARGB(255, 136, 76, 232)),
      home: const StartPageWidget(),
    );
  }
}

class StartPageWidget extends StatefulWidget {
  const StartPageWidget({Key? key}) : super(key: key);

  @override
  _StartPageWidget createState() => _StartPageWidget();
}

class _StartPageWidget extends State<StartPageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/Home_Screen.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    const Image(image: AssetImage("assets/Logo_Icon.png")),
                    const Image(image: AssetImage("assets/BeYouText.png")),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () => {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const MyJournal())),
                      },
                      // tooltip: 'signup
                      iconSize: 200,
                      icon: Image.asset(
                        "assets/Journal.png",
                        height: 200,
                        width: 150,
                      ),
                    ),
                    IconButton(
                      onPressed: () => {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const QuoteScreen())),
                      },
                      // tooltip: 'signup
                      iconSize: 200,
                      icon: Image.asset(
                        "assets/Daily_Quote_Button.png",
                        height: 200,
                        width: 150,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () => {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => const SecondScreen()),
                        )
                      },
                      // tooltip: 'signup
                      iconSize: 200,
                      icon: Image.asset(
                        "assets/DailyHighlightButton.png",
                        height: 200,
                        width: 150,
                      ),
                    ),
                    IconButton(
                      onPressed: () => {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const MyHealth())),
                      },
                      // tooltip: 'signup
                      iconSize: 200,
                      icon: Image.asset(
                        "assets/My_Health_Button.png",
                        height: 200,
                        width: 150,
                      ),
                    ),
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}
