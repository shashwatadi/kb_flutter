import 'dart:ui';
import 'package:flutter/material.dart';

class Meme extends StatelessWidget {
  final linkedinImg;
  final facebookImg;
  final instagramImg;
  final tinderImg;
  Meme(this.linkedinImg, this.facebookImg, this.instagramImg, this.tinderImg);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('sample'),
          Image.asset('assets/images/linkedin.jpg'),
          Image.asset('assets/images/facebook.jpg'),
          Text('sample'),
        ],
      )
    ]);
  }
}
