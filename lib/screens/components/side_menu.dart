import 'package:flutter/material.dart';
import 'package:my_portfolio/animation/animated_progress.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/screens/components/area_info_text.dart';
import 'package:my_portfolio/screens/components/coding.dart';
import 'package:my_portfolio/screens/components/my_information.dart';
import 'package:my_portfolio/screens/components/skills.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        MyInformation(),
        Expanded(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(defaultPadding),
            child: Column(
              children: [
                AddressInfo(
                  title: "University",
                  text: "JUET , Guna",
                ),
                AddressInfo(
                  title: "Home",
                  text: "Jabalpur",
                ),
                AddressInfo(
                  title: "CGPA",
                  text: "8.0",
                ),
                Skills(),
                SizedBox(
                  height: defaultPadding,
                ),
                Coding(),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
