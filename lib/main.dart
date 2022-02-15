import 'package:flutter/material.dart';

import 'package:portfolio/portfolio.dart';
import 'package:responsive_framework/responsive_framework.dart';

//import 'skillclass.dart';
//import 'skillslist.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Andrew's Portfolio",
      builder: (context, widget) => ResponsiveWrapper.builder(
          ClampingScrollWrapper.builder(context, widget!),
          breakpoints: const [
            ResponsiveBreakpoint.resize(425, name: MOBILE),
            ResponsiveBreakpoint.autoScale(728, name: TABLET),
            ResponsiveBreakpoint.resize(1281, name: DESKTOP),
          ]),
      debugShowCheckedModeBanner: false,
      home: Portfolio(),
    );
  }
}
