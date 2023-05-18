import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/screens/components/my_information.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        const MyInformation(),
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(defaultPadding),
            child: Column(
              children: [
                const AddressInfo(
                  title: "Address",
                  text: "India",
                ),
                const AddressInfo(
                  title: "City",
                  text: "Jabalpur",
                ),
                const AddressInfo(
                  title: "Age",
                  text: "22",
                ),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: defaultPadding),
                  child: Text(
                    "Skills",
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ),
                const Row(
                  children: [
                    Expanded(
                      child: AnimatedCircularProgressIndicator(
                        percentage: 0.8,
                        label: "Flutter",
                      ),
                    ),
                    SizedBox(width: defaultPadding),
                    Expanded(
                      child: AnimatedCircularProgressIndicator(
                        percentage: 0.72,
                        label: "c++",
                      ),
                    ),
                    SizedBox(width: defaultPadding),
                    Expanded(
                      child: AnimatedCircularProgressIndicator(
                        percentage: 0.65,
                        label: "python",
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}

class AnimatedCircularProgressIndicator extends StatelessWidget {
  const AnimatedCircularProgressIndicator({
    super.key,
    required this.percentage,
    required this.label,
  });
  final double percentage;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: percentage),
              duration: defaultDuration,
              builder: (context, double value, child) => Stack(
                    fit: StackFit.expand,
                    children: [
                      CircularProgressIndicator(
                        value: value,
                        color: primaryColor,
                        backgroundColor: darkColor,
                      ),
                      Center(
                        child: Text(
                          (value * 100).toInt().toString() + "%",
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      )
                    ],
                  )),
        ),
        const SizedBox(
          height: defaultPadding / 2,
        ),
        Text(
          label,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.subtitle2,
        )
      ],
    );
  }
}

class AddressInfo extends StatelessWidget {
  const AddressInfo({
    Key? key,
    this.title,
    this.text,
  });

  final String? title, text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title!,
            style: const TextStyle(color: Colors.white),
          ),
          Text(
            text!,
          )
        ],
      ),
    );
  }
}
