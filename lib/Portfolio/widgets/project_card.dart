// TODO Implement this library.
import 'package:flutter/material.dart';
import 'package:portfolio_web/Constant/Color/colors.dart';
import 'package:portfolio_web/Constant/Responsive/response.dart';
import 'package:portfolio_web/Constant/Theme/app_theme.dart';
import 'package:portfolio_web/Utils/constants.dart';

import 'package:sizer/sizer.dart';

import '../../Utils/project_utils.dart';

class ProjectCard extends StatefulWidget {
  final ProjectUtils project;

  const ProjectCard({Key? key, required this.project}) : super(key: key);
  @override
  ProjectCardState createState() => ProjectCardState();
}

class ProjectCardState extends State<ProjectCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    var theme = Theme.of(context);
    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () => openURL(widget.project.links),
      onHover: (isHovering) {
        if (isHovering) {
          setState(() => isHover = true);
        } else {
          setState(() => isHover = false);
        }
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 1.w),
        width: Responsive.isDesktop(context) ? 30.w : 70.w,
        height: 36.h,
        decoration: BoxDecoration(
            gradient: isHover ? pinkpurple : theme.serviceCard,
          borderRadius: BorderRadius.circular(10),
          boxShadow: isHover ? [primaryColorShadow] : [blackColorShadow],
        ),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Padding(
              padding: isHover ? const EdgeInsets.all(20) : EdgeInsets.zero,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    widget.project.icons,
                    height: height * 0.08,
                  ),
                  SizedBox(height: height * 0.02),
                  Text(
                    widget.project.titles,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: isHover ? whiteColor : theme.textColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: height * 0.01),
                  Text(
                    widget.project.description,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: isHover ? whiteColor : theme.textColor,
                    ),
                  ),
                  SizedBox(height: height * 0.01),
                   Image.asset(
                    'assets/imgs/clicktick.png',
                    height: height * 0.10,
                  ),
                ],
              ),
            ),
            AnimatedOpacity(
              duration: const Duration(milliseconds: 400),
              opacity: isHover ? 0.1 : 1.0,
              child: Container(
                width: Responsive.isDesktop(context) ? 30.w : 70.w,
                height: 36.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                )
                
              ),
            ),
          ],
        ),
      ),
    );
  }
}