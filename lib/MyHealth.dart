import 'package:flutter/material.dart';
import 'package:flutter_application_1/WriteJournal.dart';
import 'package:flutter_application_1/drinkWater.dart';
import 'package:flutter_application_1/workOut.dart';

class MyHealth extends StatefulWidget {
  const MyHealth({Key? key}) : super(key: key);
  @override
  _MyHealth createState() => _MyHealth();
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

class _MyHealth extends State<MyHealth> {
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
                image: AssetImage("assets/Health_Screen.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 10),
                  const Image(image: AssetImage("assets/HealthyMe.png")),
                  SizedBox(height: 10),
                  Column(children: [
                    const Image(image: AssetImage("assets/waterStreak.png")),
                    IconButton(
                        onPressed: () => {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const DrinkWater())),
                            },
                        iconSize: 200,
                        icon: Image.asset(
                          "assets/drinkwaterbutton.png",
                          height: 190,
                          width: 300,
                        ))
                  ]),
                  Column(children: [
                    const Image(image: AssetImage("assets/workoutst.png")),
                    IconButton(
                        onPressed: () => {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const WorkOut())),
                            },
                        iconSize: 200,
                        icon: Image.asset(
                          "assets/workoutStreak.png",
                          height: 190,
                          width: 300,
                        ))
                  ]),
                ],
              ),
            )));
  }
}
