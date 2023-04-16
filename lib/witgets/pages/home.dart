import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../persistence/profile_provider.dart';
import '../../persistence/provider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var profiles_provider = Provider.of<LeApProvider>(context, listen: true);
    var profiles = profiles_provider.profiles;
    var subjects = profiles_provider.subjects;

    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return TextButton(
            onPressed: () {
              /*TODO*/
            },
            child: Card(
              elevation: 10,
              child: ListTile(
                leading: const Icon(
                  Icons.home_work_outlined,
                  color: Color(0xff48A34C),
                ),
                title: Text(profiles[index].name),
                subtitle: Text('modified on: ' +
                    subjects[index].date.toString().substring(0, 11)),
                dense: true,
              ),
            ),
          );
        },
        itemCount: profiles.length,
      )
    );
  }
}