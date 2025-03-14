import 'package:flutter/material.dart';
import 'package:portfolio/desktoplayout.dart';
import 'package:portfolio/mobilelayout.dart';
import 'package:portfolio/tabletlayout.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 1200) {
            return Desktoplayout();
          } else if (constraints.maxWidth > 768) {
            return Tabletlayout(); // Novo layout para iPads
          } else {
            return Mobilelayout();
          }
        },
      );;
  }
}