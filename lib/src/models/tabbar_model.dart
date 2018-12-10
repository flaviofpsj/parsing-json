import 'package:flutter/material.dart';

class Choice {
  final String title;
  final IconData icon;

  Choice({this.title, this.icon});
}

List<Choice> choices = <Choice>[
  Choice(title: 'Basic Parse Simple', icon: Icons.hdr_weak),
  Choice(title: 'Basic Parse List', icon: Icons.hdr_strong),
];
