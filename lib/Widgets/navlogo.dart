import 'package:flutter/material.dart';

import 'package:portfolio_web/Constant/Theme/app_theme.dart';

import '../Constant/Responsive/response.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // theme
    var theme = Theme.of(context);
    //
    var textSty = TextStyle(
      color: theme.textColor,
      fontWeight: FontWeight.w100,
      fontSize: Responsive.isDesktop(context) ? 32 : 20,
    );

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text("< ", style: textSty),
        Text("Susmita", style: textSty),
        Text(
          Responsive.isDesktop(context) ? " />\t\t" : " />",
          style: textSty,
        )
      ],
    );
  }
}