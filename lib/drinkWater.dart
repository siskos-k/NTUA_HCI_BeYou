import 'package:flutter/material.dart';
import 'package:flutter_application_1/WriteJournal.dart';

class DrinkWater extends StatefulWidget {
  const DrinkWater({Key? key}) : super(key: key);
  @override
  _DrinkWater createState() => _DrinkWater();
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

class _DrinkWater extends State<DrinkWater> {
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
                image: AssetImage("assets/Drink_Water_Screen.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Image(image: AssetImage("assets/DWTitle.png")),
                    SizedBox(),
                    const Image(image: AssetImage("assets/DYK.png")),
                    const Image(image: AssetImage("assets/boysgirls.png")),
                    SizedBox(),
                    const Image(image: AssetImage("assets/sure.png")),
                    IconButton(
                        onPressed: () => {
                              print("drank"),
                            },
                        iconSize: 200,
                        icon: Image.asset(
                          "assets/drank.png",
                          height: 200,
                          width: 200,
                        )),
                  ]),
            )));
  }
}
