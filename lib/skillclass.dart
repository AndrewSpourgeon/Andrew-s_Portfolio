import 'package:flutter/material.dart';

class Skill {
  final String id;
  final String title;
  final int c1;
  final int c2;
  final String pic;
  final Widget star;

  Skill({
    required this.id,
    required this.title,
    required this.c1,
    required this.c2,
    required this.pic,
    required this.star,
  });
}
