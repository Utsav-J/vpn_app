import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vpn_app/utils/extensions.dart';

class VPNToggleButton extends StatelessWidget {
  const VPNToggleButton({super.key});
  @override
  Widget build(context) {
    return Column(
      children: [
        Semantics(
          button: true,
          child: GestureDetector(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(5.0.wp),
              height: 40.0.wp,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Palette.green30,
              ),
              child: Container(
                child: Icon(
                  CupertinoIcons.power,
                  size: 25.0.wp,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
