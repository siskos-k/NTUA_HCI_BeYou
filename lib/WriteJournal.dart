import 'dart:html';

import 'package:flutter/material.dart';

class WriteJournal extends StatefulWidget {
  const WriteJournal({Key? key}) : super(key: key);
  @override
  _WriteJournal createState() => _WriteJournal();
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

class _WriteJournal extends State<WriteJournal> {
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
              image: AssetImage("assets/journalmainbg.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView(
            children: [
              SizedBox(height: 10),
              const Image(image: AssetImage("assets/MJTitle.png")),
              const Image(
                  image: AssetImage("assets/Today_I_Managed_to_Text.png")),
              SizedBox(
                width: 200,
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 80),
                    border: OutlineInputBorder(),
                    alignLabelWithHint: false,
                    filled: true, //<-- SEE HERE
                    fillColor: Colors.yellow, //<-- S
                    hintText: '',
                  ),
                ),
              ),
              SizedBox(height: 10),
              const Image(image: AssetImage("assets/Grateful_Text.png")),
              SizedBox(
                width: 200,
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 80),
                    border: OutlineInputBorder(),
                    alignLabelWithHint: false,
                    filled: true, //<-- SEE HERE
                    fillColor: Colors.yellow, //<-- S
                    hintText: '',
                  ),
                ),
              ),
              SizedBox(height: 10),
              const Image(image: AssetImage("assets/Brain_Dump_Text.png")),
              SizedBox(
                width: 200,
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 80),
                    border: OutlineInputBorder(),
                    alignLabelWithHint: false,
                    filled: true, //<-- SEE HERE
                    fillColor: Colors.yellow, //<-- S
                    hintText: '',
                  ),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () => {print("peos")},
                style: ElevatedButton.styleFrom(primary: Colors.purple),
                child: Text('Submit Journal'),
              ),
              SizedBox(height: 10),
            ],
          ),
        ));
  }
}
