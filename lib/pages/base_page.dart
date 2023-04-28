import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';

import '../persistence/screen_provider.dart';
import 'edit.dart';
import 'profile.dart';
import 'entries.dart';
import 'statistics.dart';

class BasePage extends StatelessWidget {
  BasePage({Key? key}) : super(key: key);

  final PageStorageBucket bucket = PageStorageBucket();

  // Widget currentScreen = ProfilePage();

  @override
  Widget build(BuildContext context) {
    var currentTab = Provider.of<ScreenProvider>(context, listen: true);
    return Scaffold(
        appBar: AppBar(
          title: const ListTile(
            title: Text("Larning App"),
            // trailing: Text('hallo'),
            textColor: Colors.white,
          ),
          backgroundColor: const Color(0xff48a34c),
          automaticallyImplyLeading: false,
          toolbarHeight: 45,
          leading: const Icon(Icons.school_rounded, color: Colors.white),
        ),
        body: PageStorage(
          bucket: bucket,
          child: currentTab.currentScreen,
        ),
        bottomNavigationBar: Container(
          width: 200,
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
                icon: Icons.home_work_outlined,
                text: 'profiles',
                onPressed: () {
                  currentTab.change_current_tab(0, ProfilePage());
                },
              ),
              GButton(
                icon: Icons.sticky_note_2_outlined,
                text: 'entries',
                onPressed: () {
                  currentTab.change_current_tab(1, Entries());
                },
              ),
              GButton(
                icon: Icons.stacked_line_chart_outlined,
                text: 'statistics',
                onPressed: () {
                  currentTab.change_current_tab(2, Statistics());
                },
              ),
              GButton(
                icon: Icons.edit_outlined,
                text: 'edit',
                onPressed: () {
                  // currentTab.change_current_tab(3, Edit());
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Edit()),
                  );
                },
              )
            ],
          ),
        ));
  }
}
