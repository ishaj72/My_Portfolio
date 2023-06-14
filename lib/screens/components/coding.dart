import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';

import '../../animation/animated_progress.dart';

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

