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
        AnimatedLinProgIndicator(
          label: 'Dart',
          percentage: 0.7,
        ),
        AnimatedLinProgIndicator(
          label: 'Python',
          percentage: 0.6,
        ),
        AnimatedLinProgIndicator(
          label: 'c++',
          percentage: 0.65,
        ),
        AnimatedLinProgIndicator(
          label: 'ML Libraries',
          percentage: 0.5,
        ),
        AnimatedLinProgIndicator(
          label: 'DSA',
          percentage: 0.6,
        ),
      ],
    );
  }
}

class AnimatedLinProgIndicator extends StatelessWidget {
  const AnimatedLinProgIndicator({
    super.key,
    required this.percentage,
    required this.label,
  });

  final double percentage;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding),
      child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 0, end: percentage),
          duration: defaultDuration,
          builder: (context, double value, child) => Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        label,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Text((value * 100).toInt().toString() + "%"),
                    ],
                  ),
                  SizedBox(
                    height: defaultPadding / 2,
                  ),
                  LinearProgressIndicator(
                    value: value,
                    color: primaryColor,
                    backgroundColor: darkColor,
                  ),
                ],
              )),
    );
  }
}
