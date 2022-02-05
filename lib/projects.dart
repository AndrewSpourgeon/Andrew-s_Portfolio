class ProjectInfo {
  String? name;
  String? description;
  String? image;
  int? id;
  String? purl;
  String? gurl;
  String? wurl;
  ProjectInfo(
      {this.name,
      this.description,
      this.image,
      this.id,
      this.purl,
      this.gurl,
      this.wurl});
}

List<ProjectInfo> data = [
  ProjectInfo(
      id: 1,
      name: "AKA QUIZ",
      description:
          "This is an android app made for fun which is made especially for my friends to have fun and tests how good I am predicting their likes and sensibilities",
      image: 'assets/aka.jpg',
      purl:
          'https://play.google.com/store/apps/details?id=com.andrewspourgeon.akaquiz',
      gurl: 'https://github.com/AndrewSpourgeon/Quiz-App-Flutter',
      wurl: 'https://aka-quiz-drew.web.app/#/'),
  ProjectInfo(
      id: 2,
      name: "BMI CALCULATOR",
      description:
          "This app calculates your BMI according to the metrics provided by the user.",
      image: 'assets/bmi.jpg',
      purl:
          'https://play.google.com/store/apps/details?id=com.andrewspourgeon.bmicalculator',
      gurl: 'https://github.com/AndrewSpourgeon/BMI-Calculator-Flutter',
      wurl: 'https://bmi-caluculator.web.app/#/'),
  ProjectInfo(
      id: 3,
      name: "THE HUB",
      description:
          "An android app that contains all he top and useful websites belonging to different streams at a single place.",
      image: 'assets/hub.jpg',
      purl:
          'https://play.google.com/store/apps/details?id=com.andrewspourgeon.thehub',
      wurl: 'https://thehub-drew.web.app/#/',
      gurl: 'https://github.com/AndrewSpourgeon/Hub-Flutter'),
  ProjectInfo(
      id: 4,
      name: "CRED BOT",
      description:
          "An android app which generates a credit card according to the details given by the user",
      image: 'assets/cred.jpg',
      purl: '',
      wurl: 'https://cred-bot-drew.web.app/',
      gurl: 'https://github.com/AndrewSpourgeon/Cred-Bot_Flutter'),
  ProjectInfo(
    id: 5,
    name: "WHATSAPP-UI",
    description:
        "This app is an output of my challenge and a sheer skill which I have completed in 1 and a half hour by taking to complte the UI part of whatsapp as a challenge.",
    image: 'assets/whatsUI.png',
    purl: '',
    gurl: 'https://github.com/AndrewSpourgeon/Whatsapp-UI-Flutter',
    wurl: 'https://whatsapp-drew.web.app/#/',
  ),
  ProjectInfo(
    id: 6,
    name: "UNLEASH",
    description:
        "An application that generates a fact every time the user clicks the button.Users can unleash new unkonwn facts as the title says.",
    image: 'assets/unleash.jpg',
    purl: '',
    wurl: '',
    gurl: '',
  ),
  ProjectInfo(
    id: 7,
    name: "NEWS APP",
    description:
        "A application that shows the latest news from different sources.",
    image: 'assets/news.jpg',
    wurl: '',
    purl: '',
    gurl: '',
  ),
  ProjectInfo(
    id: 8,
    name: "TO-DO LIST",
    description:
        "A application that helps the user to keep track of their to-do list.",
    image: 'assets/todo.jpg',
    wurl: '',
    purl: '',
    gurl: '',
  ),
  ProjectInfo(
    id: 9,
    name: "WEATHER APP",
    description:
        "A application that shows the weather forecast of the desired location of the user.",
    image: 'assets/weather.png',
    wurl: '',
    purl: '',
    gurl: '',
  ),
  ProjectInfo(
    id: 10,
    name: "TDR",
    description:
        "A python project made to cluster the face in an image or a video.It recognizes the face of humans and paints pixels on the screen in a square shape around the face.",
    image: 'assets/tdr.jpg',
    gurl: '',
    wurl: '',
    purl: '',
  ),
];
