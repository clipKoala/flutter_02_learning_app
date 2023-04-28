import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'edit_listview.dart';

class Edit extends StatelessWidget {
  Edit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

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
        body: EditListView(),
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
                icon: Icons.add_card,
                text: 'save',
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              GButton(
                icon: Icons.add_box_outlined,
                text: 'add',
                onPressed: () {
                },
              )
            ],
          ),
        )
    );
  }
}
