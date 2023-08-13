import 'package:flutter/material.dart';
import 'package:portfolio_web/Portfolio/portfolio_desktop.dart';
import 'package:portfolio_web/Portfolio/portfolio_mobile.dart';

import '../Constant/Responsive/response.dart';



class Portfolio extends StatelessWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: PortfolioMobileTab(),
      tablet: PortfolioMobileTab(),
      desktop: PortfolioDesktop(),
    );
  }
}