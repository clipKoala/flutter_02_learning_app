import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'add.dart';
import 'home.dart';
import 'entries.dart';
import 'statistics.dart';

class BasePage extends StatefulWidget {
  const BasePage({Key? key}) : super(key: key);

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  int currentTab = 0;

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Home();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Larning App"),
          backgroundColor: const Color(0xff48a34c),
          automaticallyImplyLeading: false,
          toolbarHeight: 40,
          leading: const Icon(Icons.school_rounded, color: Colors.white),
        ),
        body: PageStorage(
          bucket: bucket,
          child: currentScreen,
        ),
        bottomNavigationBar: Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
          decoration: const BoxDecoration(
            color: Color(0xff48a34c),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: GNav(
            mainAxisAlignment: MainAxisAlignment.center,
            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            gap: 10,
            color: Colors.white70,
            activeColor: Colors.white,
            textStyle: TextStyle(letterSpacing: 1, color: Colors.white),
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'home',
                onPressed: () {
                  setState(() {
                    currentScreen = Home();
                    currentTab = 0;
                  });
                },
              ),
              GButton(
                icon: Icons.sticky_note_2_outlined,
                text: 'entries',
                onPressed: () {
                  setState(() {
                    currentScreen = Entries();
                    currentTab = 1;
                  });
                },
              ),
              GButton(
                icon: Icons.stacked_line_chart_outlined,
                text: 'statistics',
                onPressed: () {
                  setState(() {
                    currentScreen = Statistics();
                    currentTab = 2;
                  });
                },
              ),
              GButton(
                icon: Icons.add_comment_outlined,
                text: 'add',
                onPressed: () {
                  setState(() {
                    currentScreen = Add();
                    currentTab = 3;
                  });
                },
              )
            ],
          ),
        ));
  }
}
