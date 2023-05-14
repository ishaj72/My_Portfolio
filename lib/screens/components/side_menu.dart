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
                Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: defaultPadding),
                  child: Text(
                    "Skills",
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ),
                CircularProgressIndicator(
                  value: 0.8,
                  color: primaryColor,
                  backgroundColor: darkColor,
                ),
              ],
            ),
          ),
        )
      ],
    ));
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
            style: TextStyle(color: Colors.white),
          ),
          Text(
            text!,
          )
        ],
      ),
    );
  }
}
