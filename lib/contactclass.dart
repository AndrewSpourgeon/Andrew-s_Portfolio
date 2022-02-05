import 'package:flutter/material.dart';

class Contact {
  String image;
  String title;
  Color color;
  String svgimage;
  String url;
  Contact(
      {required this.color,
      required this.image,
      required this.svgimage,
      required this.title,
      required this.url});
}
