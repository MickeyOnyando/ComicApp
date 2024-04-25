import 'package:flutter/material.dart';

import '../Components/app_bar.dart';

//import 'package:circular_menu/circular_menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            AppBar_Container(),
          ],
        ),
      ),
    );
  }
}
