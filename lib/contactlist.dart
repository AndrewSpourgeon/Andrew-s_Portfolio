import 'package:portfolio/contactclass.dart';

import 'package:flutter/material.dart';

final List contacts = [
  Contact(
    image: 'assets/play.jpg',
    title: 'Google Play Store',
    color: Colors.white,
    svgimage:
        'https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/playgoogle.svg?alt=media&token=3712ccf2-c4dd-41af-862c-04650729829d',
    url: 'https://play.google.com/store/apps/dev?id=7666823867215398669',
  ),
  Contact(
    image: 'assets/github.jpg',
    title: 'Git Hub',
    color: Colors.white,
    svgimage:
        'https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/github.svg?alt=media&token=26dfad02-03a3-4bd6-ad75-0363adc01bea',
    url: 'https://github.com/AndrewSpourgeon',
  ),
  Contact(
      image: 'assets/gdev.jpg',
      title: 'Google Developers',
      color: Colors.white,
      svgimage:
          'https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/google.svg?alt=media&token=6087c7ad-2808-468d-924a-3feea54b243d',
      url: 'https://developers.google.com/profile/u/AndrewSpourgeon'),
];
