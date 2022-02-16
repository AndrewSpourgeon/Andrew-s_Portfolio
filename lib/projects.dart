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
          'https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/aka.jpg?alt=media&token=b0004cf3-f736-4a66-8355-8c7e58c1d059',
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
          'https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/bmi.jpg?alt=media&token=f55573aa-edc9-467f-af19-de0a5bd836f5',
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
          'https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/hub.jpg?alt=media&token=f719b851-8b93-49c3-8d84-f7b476695512',
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
          'https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/cred.jpg?alt=media&token=278f82a6-ad20-4e09-9e7f-96b190aaa87d',
      purl: '',
      wurl: 'https://cred-bot-drew.web.app/',
      gurl: 'https://github.com/AndrewSpourgeon/Cred-Bot_Flutter'),
  ProjectInfo(
    id: 5,
    name: "WHATSAPP-UI",
    description:
        "This app is an output of my challenge and a sheer skill which I have completed in 1 and a half hour by taking to complte the UI part of whatsapp as a challenge.",
    image:
        'https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/whatsUI.png?alt=media&token=7677493e-9e2e-448c-9848-dd28ccd36d57',
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
        'https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/unleash.jpg?alt=media&token=17a40059-8fc7-470d-8191-40888881c88f',
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
        'https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/news.jpg?alt=media&token=48044c22-0b99-4c3f-af92-b1677633b19a',
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
        'https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/todo.jpg?alt=media&token=26c80228-0fa5-423e-8798-e490986a3219',
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
        'https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/weather.png?alt=media&token=217229e2-de9e-49ef-9423-a7be7df00756',
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
        'https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/tdr.jpg?alt=media&token=798e47f9-0c87-4429-a185-bec07f1f91f1',
    gurl: '',
    wurl: '',
    purl: '',
  ),
];
