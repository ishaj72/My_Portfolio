import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(home: MyApp()), // use MaterialApp
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Stack(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              'ISHA JAIN',
              style: (TextStyle(
                  fontFamily: "hammersmithOne",
                  fontSize: 100,
                  fontWeight: FontWeight.w800)),
            ),
          ),
        ],
      )),
    );
  }
}
