import 'package:flutter/material.dart';

import 'package:portfolio_web/Constant/Theme/app_theme.dart';

import '../Constant/Responsive/response.dart';

class CustomSectionHeading extends StatelessWidget {
  final String text;

  const CustomSectionHeading({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
      desktop: Text(
        text,
        style: const TextStyle(fontSize: 56),
      ),
      tablet: Text(
        text,
        style: const TextStyle(fontSize: 36),
      ),
      mobile: Text(
        text,
        style: const TextStyle(fontSize: 26),
      ),
    );
  }
}

class CustomSectionSubHeading extends StatelessWidget {
  final String text;

  const CustomSectionSubHeading({Key? key, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Responsive(
      desktop: Text(
        text,
        textAlign: TextAlign.center,
        style: theme.brightness == Brightness.dark?
       TextStyle(
        color: theme.textColor.withOpacity(0.6),
         
          fontSize: 20,
        // Add any additional styles you want for dark theme
      ): TextStyle(
         color: theme.textColor.withOpacity(1),
          fontSize: 20,
      )
 
      ),
      tablet: Text(
        text,
        textAlign: TextAlign.center,
        style: theme.brightness == Brightness.dark?
       TextStyle(
        color: theme.textColor.withOpacity(0.6),
          fontSize: 20,
        // Add any additional styles you want for dark theme
      ): TextStyle(
         color: theme.textColor.withOpacity(1),
          fontSize: 20,
      )
 
      ),
      mobile: Text(
        text,
        textAlign: TextAlign.center,
        style: theme.brightness == Brightness.dark?
       TextStyle(
        color: theme.textColor.withOpacity(0.6),
          fontSize: 20,
        // Add any additional styles you want for dark theme
      ): TextStyle(
         color: theme.textColor.withOpacity(1),
          fontSize: 20,
      )
 
      ),
    );
  }
}
