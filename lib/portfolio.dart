import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:lottie/lottie.dart';
import 'package:card_swiper/card_swiper.dart';

import 'package:portfolio/contactlist.dart';
import 'package:portfolio/projects.dart';
import 'package:hovering/hovering.dart';
import 'package:portfolio/skillslist.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import './cerlist.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:math';
import 'package:confetti/confetti.dart';

class Portfolio extends StatefulWidget {
  Portfolio({Key? key}) : super(key: key);

  @override
  _PortfolioState createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  ConfettiController controller =
      ConfettiController(duration: Duration(seconds: 2));

  Shader lg = LinearGradient(
    colors: <Color>[
      Color(0xff0027FF),
      Color(0xffFF53BD),
    ],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 250.0, 50.0));
  Widget _andrewText() {
    return DefaultTextStyle(
      style: TextStyle(
          fontSize: 40.0,
          fontFamily: 'Mon',
          foreground: Paint()..shader = lg,
          fontWeight: FontWeight.w900),
      child: AnimatedTextKit(
        pause: Duration(milliseconds: 1),
        repeatForever: true,
        animatedTexts: [
          WavyAnimatedText('Mr.Andrew'),
          WavyAnimatedText('Spourgeon'),
        ],
        onTap: () {},
      ),
    );
  }

  Widget _secondRow() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipOval(
            child: Image.network(
              "https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/drew.jpg?alt=media&token=b3cc4e4a-e171-4114-aa59-261eb3c5b3cc",
              height: 90,
              width: 90,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          _andrewText(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: SizedBox(
        height: 40,
        width: 40,
        child: FloatingActionButton(
          backgroundColor: Colors.white,
          splashColor: Colors.red,
          child: Icon(
            Icons.favorite,
            size: 25,
            color: Colors.red,
          ),
          onPressed: () {
            controller.play();
          },
        ),
      ),
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              child: AnimationLimiter(
                child: Column(
                  children: AnimationConfiguration.toStaggeredList(
                    duration: const Duration(milliseconds: 300),
                    childAnimationBuilder: (widget) => SlideAnimation(
                      horizontalOffset: 50.0,
                      child: FadeInAnimation(
                        child: widget,
                      ),
                    ),
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                height: 50,
                                width: 10,
                              ),
                              GestureDetector(
                                onTap: () {
                                  launch('http://andrewspourgeon.me/');
                                },
                                child: Image.asset(
                                  "assets/preview.png",
                                  height: 25,
                                ),
                              )
                            ],
                          ),
                          _textanimated(),
                          SizedBox(
                            width: 50,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  launch('https://github.com/AndrewSpourgeon');
                                },
                                child: SvgPicture.network(
                                  "https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/github.svg?alt=media&token=26dfad02-03a3-4bd6-ad75-0363adc01bea",
                                  color: Colors.black,
                                  height: 17,
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              GestureDetector(
                                onTap: () {
                                  launch(
                                      'https://play.google.com/store/apps/dev?id=7666823867215398669');
                                },
                                child: Image.asset(
                                  "assets/playstore.png",
                                  height: 17,
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              GestureDetector(
                                onTap: () {
                                  launch(
                                      'https://www.linkedin.com/in/andrew-spourgeon-829458205/');
                                },
                                child: SvgPicture.asset(
                                  "assets/linkedin.svg",
                                  height: 17,
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              GestureDetector(
                                onTap: () {
                                  launch('https://twitter.com/aspourgeon');
                                },
                                child: SvgPicture.network(
                                  "https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/twitter.svg?alt=media&token=ace6d847-0bff-4f55-852c-935ba114f909",
                                  height: 17,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      _secondRow(),
                      SizedBox(
                        height: 5,
                      ),
                      aboutMe(),
                      SizedBox(
                        height: 5,
                      ),
                      SvgPicture.network(
                        'https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/star.svg?alt=media&token=4e8fa782-7c67-4fbf-a5f0-7bd1429075e1',
                        height: 30,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      _heading('Introduction'),
                      SizedBox(
                        height: 20,
                      ),
                      _thirdRow(),
                      SizedBox(
                        height: 20,
                      ),
                      _twoStar(),
                      SizedBox(
                        height: 25,
                      ),
                      _heading('Projects'),
                      SizedBox(
                        height: 25,
                      ),
                      _projectCards(),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      SizedBox(
                        height: 400,
                        width: 500,
                        child: Image.asset("assets/carbon.png"),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      _threeStar(),
                      SizedBox(
                        height: 25,
                      ),
                      _heading('Skill Set'),
                      SizedBox(
                        height: 25,
                      ),
                      Padding(
                        padding: EdgeInsets.all(0),
                        child: _skills(),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      _fourStar(),
                      SizedBox(
                        height: 25,
                      ),
                      _heading('Certifications'),
                      SizedBox(
                        height: 25,
                      ),
                      _cers(),
                      SizedBox(
                        height: 20,
                      ),
                      _fiveStar(),
                      SizedBox(
                        height: 20,
                      ),
                      _heading('Achievemnts'),
                      SizedBox(
                        height: 50,
                      ),
                      _achievements(),
                      SizedBox(
                        height: 55,
                      ),
                      Text(
                        'Tech Contacts:',
                        style: TextStyle(
                            fontFamily: 'Sf',
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      _contactDetails(),
                      SizedBox(
                        height: 25,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                LottieBuilder.network(
                                  'https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/promote.json?alt=media&token=83464705-4c85-4381-89a7-bc32ca725f1b',
                                  height: 250,
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            quote(),
                            SizedBox(
                              width: 20,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      _socialContacts(),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: ConfettiWidget(
              confettiController: controller,
              colors: [
                Colors.red,
                Colors.green,
                Colors.yellow,
                Colors.blue,
                Colors.pink,
                Colors.orange,
                Colors.purple
              ],
              emissionFrequency: 0.05,
              numberOfParticles: 20,
              blastDirectionality: BlastDirectionality.explosive,
            ),
          ),
        ],
      ),
    );
  }

  Widget _socialContacts() {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 10,
              ),
              new PopupIcon(
                icon:
                    'https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/twitter.svg?alt=media&token=ace6d847-0bff-4f55-852c-935ba114f909',
                color: Colors.lightBlue,
                text: 'Twitter',
                url: 'https://twitter.com/aspourgeon',
              ),
              SizedBox(
                width: 10,
              ),
              new PopupIcon(
                icon:
                    'https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/facebook.svg?alt=media&token=665b3281-de40-43fc-8873-401345c1e2a5',
                color: Colors.blue.shade800,
                text: 'Facebook',
                url: 'https://www.facebook.com/profile.php?id=100008269328597',
              ),
              SizedBox(
                width: 10,
              ),
              new PopupIcon(
                icon:
                    'https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/instagram.svg?alt=media&token=b62cc042-5b35-4dd7-8216-697a3657e5a5',
                color: Colors.deepOrange,
                text: 'Instagram',
                url: 'https://www.instagram.com/andrew_spourgeon/',
              ),
              SizedBox(
                width: 10,
              ),
              new PopupIcon(
                icon:
                    'https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/youtube.svg?alt=media&token=7b9ffef6-9076-47a5-8368-6ad829d226dc',
                color: Colors.red,
                text: 'YouTube',
                url: 'https://www.youtube.com/channel/UClu8x1EUxzC4O6mPeD7bQ0g',
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 10,
              ),
              new PopupIcon(
                icon:
                    'https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/gmail.svg?alt=media&token=5d0416c3-1adf-485a-b229-2395ebdd83ff',
                color: Colors.redAccent,
                text: 'Gmail',
                url: 'mailto:andrewspourgeon@gmail.com',
              ),
              SizedBox(
                width: 10,
              ),
              new PopupIcon(
                icon:
                    'https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/whatsapp.svg?alt=media&token=d65db9be-0511-406e-8402-7440f81b0563',
                color: Colors.green.shade600,
                text: 'Whatsapp',
                url: 'https://wa.me/+916303961320',
              ),
              SizedBox(
                width: 10,
              ),
              new PopupIcon(
                icon:
                    'https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/linkedin.svg?alt=media&token=9cdbf338-2116-440d-8b04-277a92f8ea85',
                color: Colors.blue.shade700,
                text: 'Linkedin',
                url: 'https://www.linkedin.com/in/andrew-spourgeon-829458205/',
              ),
              SizedBox(
                width: 10,
              ),
              new PopupIcon(
                icon:
                    'https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/stack-overflow.svg?alt=media&token=80146aff-e53d-4707-ab71-eb3ed28a099c',
                color: Colors.orangeAccent.shade400,
                text: 'StackOverflow',
                url:
                    'https://stackoverflow.com/users/15983194/andrew-spourgeon',
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget quote() {
    return Container(
      padding: EdgeInsets.only(left: 85, top: 30),
      height: 250,
      width: 400,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: NetworkImage(
            'https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/quote.jpg?alt=media&token=152d0d93-31e7-4f02-99ed-bfd3028df281',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Column(
            children: [
              Text(
                'A great community creates endless opportunites 🎯',
                style: TextStyle(
                    fontFamily: 'Spo', fontSize: 30, color: Colors.white),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 45,
                width: 270,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'For Collaboration with',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Image.asset(
                      'assets/preview.png',
                      height: 25,
                    ),
                    Text('👇'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _currentWork() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipOval(
            child: Image.asset(
              "assets/drew.jpg",
              height: 90,
              width: 90,
              fit: BoxFit.fitWidth,
            ),
          ),
          SizedBox(
            width: 8,
          ),
          RichText(
            text: TextSpan(
              text: 'Currently working as a ',
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'Pop',
                color: Colors.black,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: 'Software Engineer ',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Pop',
                    color: Colors.lightBlue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: 'at',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Pop',
                    color: Colors.black,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _achievements() {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Container(
            padding: EdgeInsets.all(0),
            decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      offset: Offset(-1, -1),
                      blurRadius: 15)
                ]),
            height: 400,
            width: 400,
            child: Center(
              child: AnimationLimiter(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: AnimationConfiguration.toStaggeredList(
                    duration: const Duration(seconds: 25),
                    childAnimationBuilder: (widget) => SlideAnimation(
                      horizontalOffset: 50.0,
                      child: FadeInAnimation(
                        child: widget,
                      ),
                    ),
                    children: [
                      Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/chart.jpg?alt=media&token=4ff2ab6f-428c-43e6-ac27-678a8b0772e8',
                        height: 250,
                        width: 400,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Most number of apps ',
                            style: TextStyle(
                                fontFamily: 'Pop',
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/lend.png?alt=media&token=2126fce8-1bc6-4f39-bfa7-3222ec3e2002',
                            height: 90,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'by a',
                              style: TextStyle(
                                fontFamily: 'Pop',
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Image.asset(
                              'assets/lendi.png',
                              height: 25,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Student',
                              style: TextStyle(
                                fontFamily: 'Pop',
                                fontSize: 12,
                              ),
                            ),
                          ]),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Container(
            padding: EdgeInsets.all(0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      offset: Offset(-1, -1),
                      blurRadius: 15)
                ]),
            height: 400,
            width: 400,
            child: Center(
              child: AnimationLimiter(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: AnimationConfiguration.toStaggeredList(
                    duration: const Duration(seconds: 27),
                    childAnimationBuilder: (widget) => SlideAnimation(
                      horizontalOffset: 50.0,
                      child: FadeInAnimation(
                        child: widget,
                      ),
                    ),
                    children: [
                      Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/fchall.jpg?alt=media&token=9c8e60f6-f027-441a-848b-b62711a016d9',
                        height: 250,
                        width: 400,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Whatspp UI in 1.5 hours',
                            style: TextStyle(
                                fontFamily: 'Pop',
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/whats.png?alt=media&token=58f75a8e-739f-4137-934a-1f691d0bcf92',
                            height: 70,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'With using ',
                            style: TextStyle(
                              fontFamily: 'Pop',
                              fontSize: 11,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Image.asset(
                            'assets/flutter.png',
                            height: 22,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                elevation: 10,
                                shadowColor: Colors.black,
                                primary: Colors.black),
                            onPressed: () {
                              launch(
                                  'https://github.com/AndrewSpourgeon/Whatsapp-UI-Flutter');
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SvgPicture.network(
                                  'https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/github.svg?alt=media&token=26dfad02-03a3-4bd6-ad75-0363adc01bea',
                                  height: 15,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'GitHub',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Sf',
                                    fontSize: 12,
                                  ),
                                )
                              ],
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                elevation: 10,
                                shadowColor: Colors.black,
                                primary: Colors.black),
                            onPressed: () {
                              launch('https://whatsapp-drew.web.app/#/');
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.network(
                                  'https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/gdevweb.png?alt=media&token=05322b90-f676-47ee-a7ac-8d46ecb3f964',
                                  height: 15,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Website',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Sf',
                                    fontSize: 12,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 55,
        ),
        Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      offset: Offset(-1, -1),
                      blurRadius: 15)
                ]),
            height: 350,
            width: 350,
            child: Center(
              child: AnimationLimiter(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: AnimationConfiguration.toStaggeredList(
                    duration: const Duration(seconds: 30),
                    childAnimationBuilder: (widget) => SlideAnimation(
                      horizontalOffset: 50.0,
                      child: FadeInAnimation(
                        child: widget,
                      ),
                    ),
                    children: [
                      Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/badge.png?alt=media&token=07b3e897-3d4b-40e5-81df-b979f414b39d',
                        height: 180,
                        width: 180,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Completed 1+ Test Code Lab',
                            style: TextStyle(
                                fontFamily: 'Pop',
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/goog.png?alt=media&token=a713dffc-e0e3-48b4-ac0e-034157117952',
                            height: 70,
                          ),
                        ],
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'from',
                              style: TextStyle(
                                fontFamily: 'Pop',
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Image.network(
                              'https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/googlecer.png?alt=media&token=65508657-d5f8-42c6-82f4-b13e180fd2d3',
                              height: 25,
                            ),
                          ]),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 55,
        ),
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/one.jpg?alt=media&token=7d18f45f-9078-4130-bb06-88464b6b9c90'),
                fit: BoxFit.cover),
          ),
          height: 150,
          width: double.infinity,
          child: Container(
            padding: EdgeInsets.only(left: 1, right: 1),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomRight,
                colors: [
                  Colors.black.withOpacity(.0),
                  Colors.black.withOpacity(.0),
                ],
              ),
            ),
            child: AnimationLimiter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: AnimationConfiguration.toStaggeredList(
                  duration: const Duration(seconds: 1),
                  childAnimationBuilder: (widget) => SlideAnimation(
                    horizontalOffset: 50.0,
                    child: FadeInAnimation(
                      child: widget,
                    ),
                  ),
                  children: [
                    Image.asset(
                      'assets/web-design.png',
                      height: 100,
                    ),
                    Container(
                      height: 120,
                      width: 200,
                      padding: EdgeInsets.all(14),
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      color: Colors.transparent,
                      child: Center(
                        child: Text(
                          "I have experimented many UI designs and animations throughout my journey.",
                          maxLines: 6,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Spo',
                              fontSize: 14),
                        ),
                      ),
                    ),
                    Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/ui.png')),
                          borderRadius: BorderRadius.circular(80)),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        _currentWork(),
        Image.network(
          'https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/epam.png?alt=media&token=672f1c58-5cce-4137-98a4-072db27130ab',
          height: 100,
        ),
      ],
    );
  }

  Widget _twoStar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.network(
          "https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/star.svg?alt=media&token=4e8fa782-7c67-4fbf-a5f0-7bd1429075e1",
          height: 30,
        ),
        SizedBox(
          width: 5,
        ),
        SvgPicture.network(
          "https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/star.svg?alt=media&token=4e8fa782-7c67-4fbf-a5f0-7bd1429075e1",
          height: 30,
        ),
      ],
    );
  }

  Widget _fourStar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.network(
          "https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/star.svg?alt=media&token=4e8fa782-7c67-4fbf-a5f0-7bd1429075e1",
          height: 30,
        ),
        SizedBox(
          width: 5,
        ),
        SvgPicture.network(
          "https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/star.svg?alt=media&token=4e8fa782-7c67-4fbf-a5f0-7bd1429075e1",
          height: 30,
        ),
        SizedBox(
          width: 5,
        ),
        SvgPicture.network(
          "https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/star.svg?alt=media&token=4e8fa782-7c67-4fbf-a5f0-7bd1429075e1",
          height: 30,
        ),
        SizedBox(
          width: 5,
        ),
        SvgPicture.network(
          "https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/star.svg?alt=media&token=4e8fa782-7c67-4fbf-a5f0-7bd1429075e1",
          height: 30,
        ),
      ],
    );
  }

  Widget _fiveStar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.network(
          "https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/star.svg?alt=media&token=4e8fa782-7c67-4fbf-a5f0-7bd1429075e1",
          height: 30,
        ),
        SizedBox(
          width: 5,
        ),
        SvgPicture.network(
          "https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/star.svg?alt=media&token=4e8fa782-7c67-4fbf-a5f0-7bd1429075e1",
          height: 30,
        ),
        SizedBox(
          width: 5,
        ),
        SvgPicture.network(
          "https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/star.svg?alt=media&token=4e8fa782-7c67-4fbf-a5f0-7bd1429075e1",
          height: 30,
        ),
        SizedBox(
          width: 5,
        ),
        SvgPicture.network(
          "https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/star.svg?alt=media&token=4e8fa782-7c67-4fbf-a5f0-7bd1429075e1",
          height: 30,
        ),
        SizedBox(
          width: 5,
        ),
        SvgPicture.network(
          "https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/star.svg?alt=media&token=4e8fa782-7c67-4fbf-a5f0-7bd1429075e1",
          height: 30,
        ),
      ],
    );
  }

  Widget _threeStar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.network(
          "https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/star.svg?alt=media&token=4e8fa782-7c67-4fbf-a5f0-7bd1429075e1",
          height: 30,
        ),
        SizedBox(
          width: 5,
        ),
        SvgPicture.network(
          "https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/star.svg?alt=media&token=4e8fa782-7c67-4fbf-a5f0-7bd1429075e1",
          height: 30,
        ),
        SizedBox(
          width: 5,
        ),
        SvgPicture.network(
          "https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/star.svg?alt=media&token=4e8fa782-7c67-4fbf-a5f0-7bd1429075e1",
          height: 30,
        ),
      ],
    );
  }

  _heading(a) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          a,
          style: TextStyle(
              fontFamily: 'App',
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
        SizedBox(
          width: 3,
        ),
        Image.network(
          'https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/next.png?alt=media&token=0ec1bd87-9d42-4ff8-803b-caf636330025',
          height: 50,
        )
      ],
    );
  }

  Widget _projectCards() {
    return Swiper(
      itemHeight: 470,
      itemCount: data.length,
      itemWidth: 1150,
      layout: SwiperLayout.STACK,
      pagination: SwiperPagination(
        alignment: Alignment.topLeft,
        builder: DotSwiperPaginationBuilder(
            activeSize: 10,
            space: 6,
            color: Colors.black,
            activeColor: Colors.cyan),
      ),
      itemBuilder: (BuildContext context, index) {
        return Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Column(
              //crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(
                  height: 30,
                ),
                Card(
                  elevation: 13,
                  shadowColor: Colors.black,
                  borderOnForeground: false,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/projectBackground.jpg?alt=media&token=ae798c56-de95-45f5-8e80-44d3a2cfa021'),
                            fit: BoxFit.fill)),
                    height: 360,
                    width: 360,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Card(
                              elevation: 20,
                              shadowColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              child: Container(
                                width: 80,
                                height: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  image: DecorationImage(
                                      image: NetworkImage(data[index].image!),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              data[index].name.toString(),
                              style: TextStyle(
                                  fontFamily: 'App',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 28,
                                  foreground: Paint()..shader = lg),
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.yellowAccent,
                          height: 10,
                          thickness: 2,
                          endIndent: 120,
                          indent: 120,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0, right: 15),
                          child: Text(data[index].description.toString(),
                              style: TextStyle(
                                  fontFamily: 'Pop',
                                  // fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                  color: Colors.black)),
                        ),
                        Divider(
                          color: Colors.yellowAccent,
                          height: 10,
                          thickness: 2,
                          endIndent: 120,
                          indent: 120,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  elevation: 10,
                                  shadowColor: Colors.grey.shade900,
                                  onPrimary: Colors.cyan,
                                  primary: Colors.black),
                              onPressed: () {
                                launch(data[index].gurl!);
                              },
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SvgPicture.network(
                                    'https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/github.svg?alt=media&token=26dfad02-03a3-4bd6-ad75-0363adc01bea',
                                    height: 15,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'GitHub',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Sf',
                                      //  fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  elevation: 10,
                                  shadowColor: Colors.grey.shade900,
                                  onPrimary: Colors.cyan,
                                  primary: Colors.black),
                              onPressed: () {
                                launch(data[index].purl!);
                              },
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SvgPicture.network(
                                    'https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/playgoogle.svg?alt=media&token=3712ccf2-c4dd-41af-862c-04650729829d',
                                    height: 15,
                                    //color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'PlayStore',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Sf',
                                      //  fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  elevation: 10,
                                  shadowColor: Colors.grey.shade900,
                                  onPrimary: Colors.cyan,
                                  primary: Colors.black),
                              onPressed: () {
                                launch(data[index].wurl!);
                              },
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.network(
                                    'https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/website.png?alt=media&token=ebf243b3-d18a-46ee-9aaa-e3c047c2d831',
                                    height: 15,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Website',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Sf',
                                      // fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  Widget cooooontactDetails() {
    return Container(
      child: Column(
        children: <Widget>[
          Text(
            'Tech Contacts:',
            style: TextStyle(
                fontFamily: 'Sf',
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
          SizedBox(
            height: 20,
          ),
          AnimationLimiter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: AnimationConfiguration.toStaggeredList(
                duration: const Duration(seconds: 1),
                childAnimationBuilder: (widget) => SlideAnimation(
                  horizontalOffset: 50.0,
                  child: FadeInAnimation(
                    child: widget,
                  ),
                ),
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(-1, -1),
                              blurRadius: 15)
                        ]),
                    height: 220,
                    width: 150,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/techgoogle.jpg?alt=media&token=81e1609d-1c59-40a8-bc70-9d5ae2a5e6be',
                            height: 150,
                            width: 150,
                            fit: BoxFit.contain,
                          ),
                          Text(
                            'Google Play Store',
                            style: TextStyle(
                                fontFamily: 'Pop',
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(70, 28),
                                  primary: Colors.white,
                                  elevation: 20,
                                  shadowColor: Colors.grey.shade900),
                              onPressed: () {},
                              child: Image.network(
                                'https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/playstore.png?alt=media&token=36cea1a0-f137-48c8-adf2-613fc0169245',
                                height: 10,
                              ))
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(-1, -1),
                              blurRadius: 15)
                        ]),
                    height: 220,
                    width: 150,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/techgithub.jpg?alt=media&token=dd163ce5-f24f-49ef-8e73-915f703e3b40',
                            height: 150,
                            width: 150,
                            fit: BoxFit.contain,
                          ),
                          Text(
                            'Git Hub Repos',
                            style: TextStyle(
                                fontFamily: 'Pop',
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(70, 28),
                                primary: Colors.black,
                                elevation: 20,
                              ),
                              onPressed: () {},
                              child: SvgPicture.network(
                                'https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/github.svg?alt=media&token=26dfad02-03a3-4bd6-ad75-0363adc01bea',
                                color: Colors.white,
                                height: 10,
                              ))
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(-1, -1),
                              blurRadius: 15)
                        ]),
                    height: 220,
                    width: 150,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/techplaystore.jpg?alt=media&token=7ed38881-d7d8-462f-bc6d-b6120c4f925a',
                            height: 150,
                            width: 150,
                            fit: BoxFit.contain,
                          ),
                          Text(
                            'Google Developers',
                            style: TextStyle(
                                fontFamily: 'Pop',
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(70, 28),
                                  primary: Colors.white,
                                  elevation: 20,
                                  shadowColor: Colors.grey.shade900),
                              onPressed: () {},
                              child: SvgPicture.network(
                                'https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/google.svg?alt=media&token=6087c7ad-2808-468d-924a-3feea54b243d',
                                height: 10,
                              ))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class PopupIcon extends StatefulWidget {
  final String icon;
  final Color color;
  final String text;
  final String url;
  const PopupIcon({
    required this.icon,
    required this.color,
    required this.text,
    required this.url,
  });

  @override
  _PopupIconState createState() => _PopupIconState();
}

class _PopupIconState extends State<PopupIcon> {
  bool onIt = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: EdgeInsets.all(1.0),
        height: 100.0,
        width: 100.0,
        child: Center(
          child: Stack(
            children: [
              AnimatedOpacity(
                opacity: onIt ? 1.0 : 0.0,
                curve: onIt ? Curves.easeOutBack : Curves.easeIn,
                duration: Duration(milliseconds: 2000),
                child: AnimatedAlign(
                  curve: onIt ? Curves.easeOutBack : Curves.easeIn,
                  alignment: onIt ? Alignment(0.0, -1.0) : Alignment(0.0, 0.0),
                  duration: Duration(milliseconds: 2000),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        left: 45.0,
                        top: 23.0,
                        child: Transform(
                          transform: Matrix4.rotationZ(pi / 4),
                          alignment: FractionalOffset.center,
                          child: Container(
                            height: 10.0,
                            width: 10.0,
                            color: widget.color,
                          ),
                        ),
                      ),
                      Container(
                        height: 30.0,
                        width: 100.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: widget.color,
                        ),
                        child: Center(
                          child: Text(
                            widget.text,
                            style: TextStyle(
                              fontFamily: 'Pop',
                              color: Colors.white,
                              fontSize: 13.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: MouseRegion(
                  onEnter: (value) {
                    setState(() {
                      onIt = true;
                    });
                  },
                  onExit: (value) {
                    setState(() {
                      onIt = false;
                    });
                  },
                  child: AnimatedContainer(
                    height: onIt ? 35.0 : 25.0,
                    width: onIt ? 35.0 : 25.0,
                    duration: Duration(milliseconds: 375),
                    decoration: BoxDecoration(
                      // color: onIt ? Colors.white : widget.color,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        launch(widget.url);
                      },
                      child: SvgPicture.network(
                        widget.icon,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _thirdRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      LottieBuilder.network(
        'https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/hello.json?alt=media&token=29cd6fbb-6947-4e31-a3e2-9791d400d5d6',
        height: 250,
      ),
      Expanded(
        child: Text(
          'Hi there lads👋!As a flutter developer I have done many projects in the stream of android and web without even taking a single certification course.Let\'s have a quick glance of my technical journey , achievemts , skills that I embrace.',
          maxLines: 20,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.cyan,
            fontFamily: 'Pop',
          ),
        ),
      ),
      SizedBox(
        width: 10,
      ),
    ],
  );
}

Widget _textanimated() {
  const colorizeColors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
  ];
  const colorizeTextStyle = TextStyle(
    fontSize: 17.0,
    fontFamily: 'Pop',
  );

  return AnimatedTextKit(
    animatedTexts: [
      ColorizeAnimatedText(
        'Welcome',
        textStyle: colorizeTextStyle,
        colors: colorizeColors,
      ),
      ColorizeAnimatedText(
        'To Drew\'s',
        textStyle: colorizeTextStyle,
        colors: colorizeColors,
      ),
      ColorizeAnimatedText(
        'Portfolio',
        textStyle: colorizeTextStyle,
        colors: colorizeColors,
      ),
    ],
    isRepeatingAnimation: true,
    repeatForever: true,
    onTap: () {},
  );
}

Widget _skills() {
  return GridView(
    physics: ScrollPhysics(),
    padding: EdgeInsets.all(25),
    shrinkWrap: true,
    // ignore: non_constant_identifier_names
    children: skilllist
        .map<Widget>((skill) => SkillItem(
              skill.title,
              skill.c1,
              skill.c2,
              skill.pic,
              skill.star,
            ))
        .toList(),
    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
      maxCrossAxisExtent: 100,
      childAspectRatio: 0.9,
      crossAxisSpacing: 90,
      mainAxisSpacing: 50,
    ),
  );
}

class SkillItem extends StatelessWidget {
  final String title;
  final int c1;
  final int c2;
  final String pic;
  final Widget star;
  SkillItem(this.title, this.c1, this.c2, this.pic, this.star);

  @override
  Widget build(BuildContext context) {
    return HoverWidget(
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              gradient: LinearGradient(
                colors: [
                  Color(c1),
                  Color(c2),
                ],
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                )
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SizedBox(
                height: 2,
              ),
              Text(
                title,
                style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Pop'),
              ),
              SizedBox(
                height: 3,
              ),
              SvgPicture.network(
                pic,
                height: 40,
              ),
              SizedBox(
                height: 3,
              ),
              Center(
                child: star,
              ),
            ],
          ),
        ),
        hoverChild: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              gradient: LinearGradient(
                colors: [
                  Color(c1),
                  Color(c2),
                ],
              ),
              boxShadow: [
                BoxShadow(
                    color: Color(c1), offset: Offset(-4, -4), blurRadius: 15)
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SizedBox(
                height: 2,
              ),
              Text(
                title,
                style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Pop'),
              ),
              SizedBox(
                height: 3,
              ),
              SvgPicture.network(
                pic,
                height: 40,
              ),
              SizedBox(
                height: 3,
              ),
              Center(
                child: star,
              ),
            ],
          ),
        ),
        onHover: (event) {});
  }
}

Widget aboutMe() {
  return Column(
    children: <Widget>[
      HoverWidget(
          child: DelayedDisplay(
            delay: Duration(
              milliseconds: 3500,
            ),
            child: Container(
              width: 250,
              padding: EdgeInsets.symmetric(horizontal: 0),
              child: ListTile(
                leading: Image.network(
                  'https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/eflutter.png?alt=media&token=4485b2bf-60bd-4a89-8adf-b306a672ec5e',
                  height: 45,
                ),
                title: Text(
                  'Flutter Developer ⚡',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          hoverChild: DelayedDisplay(
            delay: Duration(
              milliseconds: 3500,
            ),
            child: Container(
              width: 290,
              padding: EdgeInsets.symmetric(horizontal: 0),
              child: ListTile(
                leading: Image.network(
                  'https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/eflutter.png?alt=media&token=4485b2bf-60bd-4a89-8adf-b306a672ec5e',
                  height: 45,
                ),
                title: Text(
                  'Flutter Developer ⚡',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          onHover: (event) {}),
      HoverWidget(
          child: DelayedDisplay(
            delay: Duration(milliseconds: 3900),
            child: Container(
              width: 250,
              padding: EdgeInsets.symmetric(horizontal: 2),
              decoration: BoxDecoration(
                // color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                minLeadingWidth: 7,
                hoverColor: Colors.blue,
                leading: ClipOval(
                  child: Image.network(
                    'https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/evideo.png?alt=media&token=801e8ad4-5d62-4f56-9e98-05b276e876d7',
                    height: 45,
                    fit: BoxFit.fill,
                  ),
                ),
                title: Text(
                  'Java Love ❤️',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          hoverChild: DelayedDisplay(
            delay: Duration(milliseconds: 3900),
            child: Container(
              width: 290,
              padding: EdgeInsets.symmetric(horizontal: 2),
              decoration: BoxDecoration(
                //  color: Colors.grey.shade400,
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                leading: ClipOval(
                  child: Image.network(
                    'https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/evideo.png?alt=media&token=801e8ad4-5d62-4f56-9e98-05b276e876d7',
                    height: 45,
                    fit: BoxFit.fill,
                  ),
                ),
                title: Text(
                  'Java Love ❤️',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          onHover: (event) {}),
      HoverWidget(
          child: DelayedDisplay(
            delay: Duration(milliseconds: 4500),
            child: Container(
              width: 250,
              padding: EdgeInsets.symmetric(horizontal: 2),
              decoration: BoxDecoration(
                // color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                minLeadingWidth: 7,
                leading: ClipOval(
                  child: Image.network(
                    'https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/emobile.png?alt=media&token=706e5651-d792-413e-a22f-c14974bd2cd0',
                    height: 45,
                    fit: BoxFit.fill,
                  ),
                ),
                title: Text(
                  'Cloud Enthusiast 👌',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          hoverChild: DelayedDisplay(
            delay: Duration(milliseconds: 4500),
            child: Container(
              width: 290,
              padding: EdgeInsets.symmetric(horizontal: 2),
              decoration: BoxDecoration(
                // color: Colors.grey.shade400,
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                leading: ClipOval(
                  child: Image.network(
                    'https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/emobile.png?alt=media&token=706e5651-d792-413e-a22f-c14974bd2cd0',
                    height: 45,
                    fit: BoxFit.fill,
                  ),
                ),
                title: Text(
                  'Cloud Enthusiast 👌',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          onHover: (event) {}),
      HoverWidget(
          child: DelayedDisplay(
            delay: Duration(milliseconds: 4900),
            child: Container(
              width: 250,
              padding: EdgeInsets.symmetric(horizontal: 2),
              decoration: BoxDecoration(
                // color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                minLeadingWidth: 7,
                leading: ClipOval(
                  child: Image.network(
                    'https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/ephoto.png?alt=media&token=f264846f-b879-4ade-a0f7-a52c522052e0',
                    height: 45,
                    fit: BoxFit.fill,
                  ),
                ),
                title: Text(
                  'Photo Editor 📸',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          hoverChild: DelayedDisplay(
            delay: Duration(milliseconds: 4900),
            child: Container(
              width: 290,
              padding: EdgeInsets.symmetric(horizontal: 2),
              decoration: BoxDecoration(
                //  color: Colors.grey.shade400,
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                leading: ClipOval(
                  child: Image.network(
                    'https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/ephoto.png?alt=media&token=f264846f-b879-4ade-a0f7-a52c522052e0',
                    height: 45,
                    fit: BoxFit.fill,
                  ),
                ),
                title: Text(
                  'Photo Editor 📸',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          onHover: (event) {}),
      HoverWidget(
          child: DelayedDisplay(
            delay: Duration(milliseconds: 5500),
            child: Container(
              width: 250,
              padding: EdgeInsets.symmetric(horizontal: 2),
              decoration: BoxDecoration(
                // color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                minLeadingWidth: 7,
                leading: ClipOval(
                  child: Image.network(
                    'https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/ejava.png?alt=media&token=945ddb8d-e64e-4b23-81c4-a791ae641c40',
                    height: 45,
                    fit: BoxFit.fill,
                  ),
                ),
                title: Text(
                  'Video Editor 🎬',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          hoverChild: DelayedDisplay(
            delay: Duration(milliseconds: 5500),
            child: Container(
              width: 290,
              padding: EdgeInsets.symmetric(horizontal: 2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                leading: ClipRect(
                  child: Image.network(
                    'https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/ejava.png?alt=media&token=945ddb8d-e64e-4b23-81c4-a791ae641c40',
                    height: 45,
                    fit: BoxFit.fill,
                    scale: 75,
                  ),
                ),
                title: Text(
                  'Video Editor 🎬',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          onHover: (event) {}),
      SizedBox(
        height: 20,
      ),
    ],
  );
}

class CerItem extends StatelessWidget {
  final Widget cer;
  CerItem(
    this.cer,
  );

  @override
  Widget build(BuildContext context) {
    return cer;
  }
}

Widget _cers() {
  return GridView(
    physics: ScrollPhysics(),
    padding: EdgeInsets.all(25),
    shrinkWrap: true,
    // ignore: non_constant_identifier_names
    children: cerlistt.map<Widget>((Cer) => CerItem(Cer.cer)).toList(),
    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
      maxCrossAxisExtent: 400,
      childAspectRatio: 1,
      crossAxisSpacing: 70,
      mainAxisSpacing: 10,
    ),
  );
}

class ContactItem extends StatelessWidget {
  final String image;
  final String title;
  final Color color;
  final String svgimage;
  final String url;

  ContactItem(
    this.image,
    this.title,
    this.color,
    this.svgimage,
    this.url,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
                color: Colors.grey, offset: Offset(-1, -1), blurRadius: 15)
          ]),
      height: 220,
      width: 150,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset(
              image,
              height: 150,
              width: 150,
              fit: BoxFit.contain,
            ),
            Text(
              title,
              style: TextStyle(
                  fontFamily: 'Pop', fontSize: 10, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(70, 28),
                    primary: color,
                    elevation: 20,
                    shadowColor: Colors.grey.shade900),
                onPressed: () {
                  launch(url);
                },
                child: SvgPicture.network(
                  svgimage,
                  height: 20,
                ))
          ],
        ),
      ),
    );
  }
}

Widget _contactDetails() {
  return GridView(
    physics: ScrollPhysics(),
    padding: EdgeInsets.all(25),
    shrinkWrap: true,
    // ignore: non_constant_identifier_names
    children: contacts
        .map<Widget>((contact) => ContactItem(
              contact.image,
              contact.title,
              contact.color,
              contact.svgimage,
              contact.url,
            ))
        .toList(),
    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
      maxCrossAxisExtent: 200,
      childAspectRatio: 0.7,
      crossAxisSpacing: 70,
      mainAxisSpacing: 50,
    ),
  );
}
