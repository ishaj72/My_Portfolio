// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/main.dart';
import 'package:my_portfolio/screens/components/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        constraints: BoxConstraints(maxWidth: maxWidth),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: SideMenu(),
            ),
            Expanded(
                flex: 7,
                child: Container(
                  color: Colors.blue,
                )
              )
            ],
          ),
        ),
      )
    );
  }
}
