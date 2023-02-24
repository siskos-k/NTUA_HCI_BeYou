import 'package:flutter/material.dart';
import 'package:flutter_application_1/WriteJournal.dart';

class WorkOut extends StatefulWidget {
  const WorkOut({Key? key}) : super(key: key);
  @override
  _WorkOut createState() => _WorkOut();
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

class _WorkOut extends State<WorkOut> {
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
                image: AssetImage("assets/WorkOut_Screen.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Image(image: AssetImage("assets/WOH.png")),
                    SizedBox(),
                    const Image(image: AssetImage("assets/Make_Sure_Text.png")),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Image(image: AssetImage("assets/MAN.png")),
                        const Image(image: AssetImage("assets/WOMAN.png")),
                      ],
                    ),
                    SizedBox(),
                    const Image(image: AssetImage("assets/GUIDE.png")),
                    IconButton(
                        onPressed: () => {
                              print("drank"),
                            },
                        iconSize: 200,
                        icon: Image.asset(
                          "assets/DWD.png",
                          height: 200,
                          width: 200,
                        )),
                  ]),
            )));
  }
}
