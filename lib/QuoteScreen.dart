import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class QuoteScreen extends StatefulWidget {
  const QuoteScreen({Key? key}) : super(key: key);
  @override
  _QuoteScreen createState() => _QuoteScreen();
}

class HideShowButton extends StatefulWidget {
  final String text;
  HideShowButton({required this.text});

  @override
  _HideShowButtonState createState() => _HideShowButtonState();
}

class _HideShowButtonState extends State<HideShowButton> {
  bool _isVisible = false;

  void _toggleVisibility() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  final FlutterTts flutterTts = FlutterTts();

  @override
  Widget build(BuildContext context) {
    speak(String text) async {
      await flutterTts.setLanguage("en-US");
      await flutterTts.setPitch(1);
      await flutterTts.speak(text);
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Visibility(
          visible: _isVisible,
          child: Text(
            widget.text,
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        SizedBox(height: 400),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          ElevatedButton(
            onPressed: _toggleVisibility,
            style: ElevatedButton.styleFrom(primary: Colors.purple),
            child: Text(_isVisible ? 'Hide Highlight' : 'Reveal Highlight'),
          ),
          SizedBox(width: 100),
          ElevatedButton(
              child: Text("Hear Quote"), onPressed: () => speak(widget.text))
        ] //speak(QuoteText)),
            )
      ],
    );
  }
}

class _QuoteScreen extends State<QuoteScreen> {
  bool isPressed = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 227, 201, 201),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset('Logo_Icon.png'),
            ],
          )
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/Quote_Screen.png"),
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
                    const Image(image: AssetImage("assets/BeInspired.png")),
                    // const Image(image: AssetImage("assets/BeYouText.png")),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // IconButton(
                    //   onPressed: () => {
                    //     // isPressed = !isPressed;
                    //     print("hi")
                    //   },
                    //   // tooltip: 'signup
                    //   iconSize: 200,
                    //   icon: Image.asset(
                    //     isPressed ? "assets/revealh.png" : "assets/hideh.png",
                    //     height: 200,
                    //     width: 150,
                    //   ),
                    // ),
                    HideShowButton(
                      text: 'Pain is just Premature enlightment',
                    ),
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}
