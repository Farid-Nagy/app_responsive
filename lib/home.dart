import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({
    super.key,
    required this.androidScreen,
    required this.desktopScreen,
    required this.tabletScreen,
  });

  final Widget androidScreen;
  final Widget desktopScreen;
  final Widget tabletScreen;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          final width = constraints.maxWidth;
          if (width < 600) {
            return androidScreen;
          } else if (width < 1200) {
            return tabletScreen;
          } else {
            return desktopScreen;
          }
        },
      ),
    );
  }
}
