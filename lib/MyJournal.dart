import 'package:flutter/material.dart';
import 'package:flutter_application_1/WriteJournal.dart';

class MyJournal extends StatefulWidget {
  const MyJournal({Key? key}) : super(key: key);
  @override
  _MyJournal createState() => _MyJournal();
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

class _MyJournal extends State<MyJournal> {
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
                image: AssetImage("assets/Jis.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 10),
                  const Image(image: AssetImage("assets/MJTitle.png")),
                  const Image(image: AssetImage("assets/Streak.png")),
                  SizedBox(height: 40),
                  const Image(
                    image: AssetImage("assets/date.png"),
                    height: 300,
                  ),
                  IconButton(
                    onPressed: () => {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const WriteJournal())),
                    },
                    iconSize: 200,
                    icon: Image.asset(
                      "assets/buttonj.png",
                      height: 190,
                      width: 300,
                    ),
                  ),
                ],
              ),
            )));
  }
}
