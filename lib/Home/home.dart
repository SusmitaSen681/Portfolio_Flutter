import 'package:flutter/material.dart';
import 'package:portfolio_web/Home/home_desktop.dart';
import 'package:portfolio_web/Home/home_mobile.dart';
import 'package:portfolio_web/Home/home_tab.dart';

import '../Constant/Responsive/response.dart';

class HomePages extends StatelessWidget {
  const HomePages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: HomeMobile(),
      tablet: HomeTab(),
      desktop: HomeDesktop(),
    );
  }
}