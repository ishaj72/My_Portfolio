import 'package:flutter/material.dart';
import 'package:my_portfolio/animation/animated_progress.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/screens/components/area_info_text.dart';
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
                  title: "Address",
                  text: "India",
                ),
                AddressInfo(
                  title: "City",
                  text: "Jabalpur",
                ),
                AddressInfo(
                  title: "Age",
                  text: "22",
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

class Coding extends StatelessWidget {
  const Coding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            'Coding',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: 0.8),
            duration: defaultDuration,
            builder: (context, double value, child) => LinearProgressIndicator(
                  value: value,
                  color: primaryColor,
                  backgroundColor: darkColor,
                )),
      ],
    );
  }
}
