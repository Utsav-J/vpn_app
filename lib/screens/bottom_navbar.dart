import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});
  @override
  Widget build(context) {
    return BottomNavigationBar(items: const [
      BottomNavigationBarItem(icon: Icon(CupertinoIcons.flag), label: ''),
      BottomNavigationBarItem(icon: Icon(null), label: 'Select Country')
    ]);
  }
}
