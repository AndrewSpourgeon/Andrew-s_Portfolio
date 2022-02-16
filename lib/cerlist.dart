import './cerclass.dart';
import 'package:flutter/material.dart';

final cerlistt = [
  Cer(
    cer: SizedBox(
      height: 300,
      width: 400,
      child: Image.network(
          'https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/certificate.jpg?alt=media&token=b5afeb37-7686-417f-b510-98e6aedf7551'),
    ),
    ide: '1',
  ),
  Cer(
    cer: SizedBox(
      height: 300,
      width: 400,
      child: Image.network(
          'https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/javacode.jpg?alt=media&token=09736454-9192-4796-b49b-cf996cdd5ffb'),
    ),
    ide: '2',
  ),
  Cer(
    cer: SizedBox(
      height: 300,
      width: 400,
      child: Image.network(
          'https://firebasestorage.googleapis.com/v0/b/drew-portfolio.appspot.com/o/pythoncer.jpg?alt=media&token=54cc46df-fc31-45e8-b6f4-1f8e4d22badf'),
    ),
    ide: '3',
  ),
];
