import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio_web/Changes/text.dart';
import 'package:portfolio_web/Configs/Other/space.dart';
import 'package:portfolio_web/Constant/Theme/app_theme.dart';
import 'package:portfolio_web/Widgets/custom_heading.dart';

import 'package:sizer/sizer.dart';

import '../Constant/Color/colors.dart';
import '../Constant/Responsive/response.dart';
import '../Utils/service_utils.dart';

part 'services_desktop.dart';
part 'services_mobile.dart';
part 'widgets/_services_card.dart';

class Services extends StatelessWidget {
  const Services({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: ServiceMobile(),
      tablet: ServiceMobile(),
      desktop: ServiceDesktop(),
    );
  }
}