class ServicesUtils {
  final String name;
  final String icon;
  final List<String> tool;
  final String toolsicon;
  final String description;

  ServicesUtils( 
      {required this.name,
      required this.icon,
      required this.description,
      required this.toolsicon,
      required this.tool});
}

List<ServicesUtils> servicesUtils = [
  ServicesUtils(
    name: 'Android App Development',
    icon: 'assets/imgs/android.svg',
    description:
        "Are you interested in the great Mobile app? Let's make it a reality.",
    toolsicon:'assets/imgs/program.png',
    tool: ['Flutter', 'Android (Kotlin or Java)'],
  ),
  ServicesUtils(
    name: 'iOS App Development',
    icon: 'assets/imgs/apple.svg',
    description:
        "Are you interested in the great Mobile app? Let's make it a reality.",
        toolsicon:'assets/imgs/program.png',
    tool: ['Flutter'],
  ),
  ServicesUtils(
    name: 'Windows Application Development',
    icon: 'assets/imgs/windows.svg',
    description:
        "Are you interested in the great Windows Application? Let's make it a reality.",
        toolsicon:'assets/imgs/program.png',
    tool: ['Flutter'],

  ),
  ServicesUtils(
    name: 'UI/UX Designing',
    icon: 'assets/imgs/graphic.svg',
    description:
        "I'm creating elegant designs suited to your needs following core design theory. ",
        toolsicon:'assets/imgs/program.png',
    tool: ['Figma', 'Photoshop'],
  ),
  ServicesUtils(
    name: 'Web Development',
    icon: 'assets/imgs/website.svg',
    description:
        "Do you have an idea for your next great website? Let's make it a reality.",
        toolsicon:'assets/imgs/program.png',
    tool: ['Flutter', 'Html,css,js'],
  ),
];
