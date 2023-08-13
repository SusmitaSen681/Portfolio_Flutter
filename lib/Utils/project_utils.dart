class ProjectUtils {
  
  final String icons;
  final String titles;
  final String description;
  final String links;
  ProjectUtils({
  
    required this.icons,
    required this.titles,
    required this.description,
    required this.links,
  });
}

List<ProjectUtils> projectUtils = [
  ProjectUtils(
    icons: 'assets/imgs/flutter.png',
    titles: 'Password Generator & Manager App',
    description:
        'This is a just Fully functional password generator & manager App by using flutter, source code is also available',
    links: 'https://github.com/SusmitaSen681/Password-Generator-Manager',
  ),
  ProjectUtils(
    icons: 'assets/imgs/flutter.png',
    titles: 'Notekeeper App',
    description:
        'This is a just Fully functional notekeeper App by using flutter, source code is also available',
    links: 'https://github.com/SusmitaSen681/NoteKeeper',
  ),
  ProjectUtils(
    icons: 'assets/imgs/javaback.png',
    titles: 'Weather App',
    description:
        'This is a just Fully functional Weather App by using java, source code is also available',
    links: 'https://github.com/SusmitaSen681/Weather-App',
  ),
  ProjectUtils(
    icons: 'assets/imgs/javaback.png',
    titles: 'Tic-Tac-Toe App',
    description:
        'This is a just Fully functional Tic-Tac-Toe App by using java, source code is also available',
    links: 'https://github.com/SusmitaSen681/Tictactoe-Love-Version-',
  ),
];