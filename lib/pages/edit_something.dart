import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../persistence/profile_provider.dart';
import '../persistence/subject_provider.dart';

class EditSomething extends StatelessWidget {
  EditSomething({Key? key}) : super(key: key);

  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var profiles_provider = Provider.of<ProfileProvider>(context, listen: true);
    var profiles = profiles_provider.profiles;

    var subject_provider = Provider.of<SubjectProvider>(context, listen: true);
    var subjects = subject_provider.subjects;

    bool to_edit = false;

    return Scaffold(
      body: Column(
          children: [
            Row(
              children: [
                MaterialButton(
                  onPressed: () {
                    to_edit = false;
                  },
                  color: Colors.black45,
                  child: const Text(
                    'edit profile',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    to_edit = true;
                  },
                  color: Colors.black45,
                  child: const Text(
                    'edit subject',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),

            to_edit ?
            Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: 'subject name',
                  border: OutlineInputBorder(),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'time',
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.clear),
                    onPressed: () {
                      _controller.clear();
                    },
                  ),
                ),
              ),
              MaterialButton(
                onPressed: () {
                  subject_provider.addSubject()
                },
                color: Colors.black45,
                child: const Text(
                  'edit',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
            ) :
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: 'subject name',
                    border: OutlineInputBorder(),
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'time',
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.clear),
                      onPressed: () {
                        _controller.clear();
                      },
                    ),
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    subject_provider
                    .
                  },
                  color: Colors.black45,
                  child: const Text(
                    'edit',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            )
          ]
      ),
    );
  }
}
