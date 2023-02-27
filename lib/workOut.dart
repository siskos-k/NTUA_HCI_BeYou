import 'package:flutter/material.dart';
import 'package:flutter_application_1/WriteJournal.dart';
import 'package:url_launcher/url_launcher.dart';

class WorkOut extends StatefulWidget {
  const WorkOut({Key? key}) : super(key: key);
  @override
  _WorkOut createState() => _WorkOut();
}

class DialogExample extends StatelessWidget {
  const DialogExample({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Your WorkOut is done!'),
          content: const Text(
              'Make sure to come back tomorrow to maintain your streak!'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        ),
      ),
      child: Image(image: AssetImage("assets/DWD.png")),
    );
  }
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
    const Url = "awdawd";
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
                        IconButton(
                            onPressed: () async {
                              const url =
                                  'https://www.youtube.com/watch?v=oqA4TSF3pYk&list=PLT4OnqcBgyE_R7KHFlAAQVa4iA029CCu3';
                              final uri = Uri.parse(url);
                              if (await canLaunchUrl(uri)) {
                                await launchUrl(uri);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            iconSize: 200,
                            icon: Image.asset(
                              "assets/MAN.png",
                              height: 190,
                              width: 300,
                            )),
                        IconButton(
                            onPressed: () async {
                              const url =
                                  'https://www.youtube.com/watch?v=KrY2Kv_BYKo&list=PLndmDqg0p2P6KqwfHRSgPB1pxXQYTnGjo';
                              final uri = Uri.parse(url);
                              if (await canLaunchUrl(uri)) {
                                await launchUrl(uri);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            iconSize: 200,
                            icon: Image.asset(
                              "assets/WOMAN.png",
                              height: 190,
                              width: 300,
                            )),
                      ],
                    ),
                    SizedBox(),
                    const Image(image: AssetImage("assets/GUIDE.png")),
                    DialogExample()
                  ]),
            )));
  }
}
