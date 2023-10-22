import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vpn_app/utils/extensions.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer(
      {super.key,
      required this.titleText,
      required this.subtitleText,
      required this.widgetFile});
  final String titleText;
  final String subtitleText;
  final Widget widgetFile;
  @override
  Widget build(context) {
    return SizedBox(
      width: 25.0.wp,
      child: Column(
        children: [
          widgetFile,
          SizedBox(height: 0.01.hp),
          Text(
            titleText,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Text(
            subtitleText,
            style: Theme.of(context).textTheme.titleSmall,
          )
        ],
      ),
    );
  }
}
