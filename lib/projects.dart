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
      image:
          'https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/aka.jpg?alt=media&token=0b143aba-8a2c-4a07-a513-7d35b39ff0c8',
      purl:
          'https://play.google.com/store/apps/details?id=com.andrewspourgeon.akaquiz',
      gurl: 'https://github.com/AndrewSpourgeon/Quiz-App-Flutter',
      wurl: 'https://aka-quiz-drew.web.app/#/'),
  ProjectInfo(
      id: 2,
      name: "BMI CALCULATOR",
      description:
          "This app calculates your BMI according to the metrics provided by the user.",
      image:
          'https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/bmi.jpg?alt=media&token=9c14d484-5e46-466b-9f1e-2e2672f923d4',
      purl:
          'https://play.google.com/store/apps/details?id=com.andrewspourgeon.bmicalculator',
      gurl: 'https://github.com/AndrewSpourgeon/BMI-Calculator-Flutter',
      wurl: 'https://bmi-caluculator.web.app/#/'),
  ProjectInfo(
      id: 3,
      name: "THE HUB",
      description:
          "An android app that contains all he top and useful websites belonging to different streams at a single place.",
      image:
          'https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/hhh.jpg?alt=media&token=e1ed3ff2-6882-4625-9832-57c48828a0b9',
      purl:
          'https://play.google.com/store/apps/details?id=com.andrewspourgeon.thehub',
      wurl: 'https://thehub-drew.web.app/#/',
      gurl: 'https://github.com/AndrewSpourgeon/Hub-Flutter'),
  ProjectInfo(
      id: 4,
      name: "CRED BOT",
      description:
          "An android app which generates a credit card according to the details given by the user",
      image:
          'https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/cred.jpg?alt=media&token=03a216b6-f9b5-43e6-90d5-023c7d052e07',
      purl: '',
      wurl: 'https://cred-bot-drew.web.app/',
      gurl: 'https://github.com/AndrewSpourgeon/Cred-Bot_Flutter'),
  ProjectInfo(
    id: 5,
    name: "WHATSAPP-UI",
    description:
        "This app is an output of my challenge and a sheer skill which I have completed in 1 and a half hour by taking to complte the UI part of whatsapp as a challenge.",
    image:
        'https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/PicsArt_10-09-03.30.50.png?alt=media&token=2f4bf2a5-5c9a-4fdb-b51a-15b022c4da90',
    purl: '',
    gurl: 'https://github.com/AndrewSpourgeon/Whatsapp-UI-Flutter',
    wurl: 'https://whatsapp-drew.web.app/#/',
  ),
  ProjectInfo(
    id: 6,
    name: "UNLEASH",
    description:
        "An application that generates a fact every time the user clicks the button.Users can unleash new unkonwn facts as the title says.",
    image:
        'https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/unleash.jpg?alt=media&token=571f9e16-0e46-4531-8e04-74e41976a16d',
    purl: '',
    wurl: '',
    gurl: '',
  ),
  ProjectInfo(
    id: 7,
    name: "NEWS APP",
    description:
        "A application that shows the latest news from different sources.",
    image:
        'https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/news.jpg?alt=media&token=6e9b980c-4ae5-4813-91d4-a47d208cad7c',
    wurl: '',
    purl: '',
    gurl: '',
  ),
  ProjectInfo(
    id: 8,
    name: "TO-DO LIST",
    description:
        "A application that helps the user to keep track of their to-do list.",
    image:
        'https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/todo.jpg?alt=media&token=af571469-2c7c-48c8-99d6-f3974a2f19cc',
    wurl: '',
    purl: '',
    gurl: '',
  ),
  ProjectInfo(
    id: 9,
    name: "WEATHER APP",
    description:
        "A application that shows the weather forecast of the desired location of the user.",
    image:
        'https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/weather.png?alt=media&token=e5ad9f6c-79c0-4a56-9c99-aa4c8d93e1ff',
    wurl: '',
    purl: '',
    gurl: '',
  ),
  ProjectInfo(
    id: 10,
    name: "TDR",
    description:
        "You can roll a dice, flip a coin, play rock paper scissors at a single place ",
    image:
        'https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/tdr.jpg?alt=media&token=a02b6ec0-10ca-4667-872d-b498c9bcd6e7',
    gurl: '',
    wurl: '',
    purl: '',
  ),
];
