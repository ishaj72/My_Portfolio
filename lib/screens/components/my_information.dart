import 'package:flutter/material.dart';

class MyInformation extends StatelessWidget {
  const MyInformation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
          color: Color(0xFF242430),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Spacer(flex: 2),
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(
                    "/home/isha/Desktop/flutter_app/my_portfolio/assets/me.jpg"),
              ),
              Spacer(),
              Text(
                "ISHA JAIN",
                style: Theme.of(context).textTheme.subtitle2,
              ),
              Text(
                "CSE student and a flutter developer",
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                  height: 1.5,
                ),
              ),
              Spacer(flex: 2),
            ],
          )),
    );
  }
}
