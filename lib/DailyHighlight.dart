import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);
  @override
  _SecondScreen createState() => _SecondScreen();
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

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Visibility(
          visible: _isVisible,
          child: Text(
            widget.text,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 400),
        ElevatedButton(
          onPressed: _toggleVisibility,
          style: ElevatedButton.styleFrom(primary: Colors.purple),
          child: Text(_isVisible ? 'Hide Highlight' : 'Reveal Highlight'),
        ),
      ],
    );
  }
}

class _SecondScreen extends State<SecondScreen> {
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
            image: AssetImage("assets/dh.png"),
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
                    const Image(image: AssetImage("assets/dhtitle.png")),
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
                      text: 'Give someone you miss a call. Time to catch up!',
                    ),
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}
