import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(
        title: const Text("Larning App"),
        backgroundColor: const Color(0xff48a34c),
        automaticallyImplyLeading: false,
        leading: Icon(Icons.school_rounded, color: Colors.white),
      ),


      bottomNavigationBar: Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),

          decoration: const BoxDecoration(
            color: Color(0xff48a34c),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),

          child: BottomNavBarContent()),
    );
  }
}

class BottomNavBarContent extends StatelessWidget {
  const BottomNavBarContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const GNav(
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
        ),
        GButton(
          icon: Icons.sticky_note_2_outlined,
          text: 'entries',
        ),
        GButton(
          icon: Icons.stacked_line_chart_outlined,
          text: 'statistics',
        ),
        GButton(
          icon: Icons.add_comment_outlined,
          text: 'add',
        )
      ],
    );
  }
}
