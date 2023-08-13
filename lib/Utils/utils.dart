import 'package:flutter/material.dart';
import 'package:portfolio_web/Contact/contact.dart';
import 'package:portfolio_web/Home/home.dart';
import 'package:portfolio_web/Portfolio/portfolio.dart';

import '../Service/services.dart';
import '../Widgets/footer.dart';

class BodyUtils {
  static const List<Widget> views = [
    HomePages(),
    // About(),
    Services(),
    Portfolio(),
    Contact(),
    Footer(),
  ];
}