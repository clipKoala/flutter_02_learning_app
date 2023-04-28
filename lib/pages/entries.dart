import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../persistence/subject_provider.dart';
import '../persistence/profile_provider.dart';

class Entries extends StatelessWidget {
  const Entries({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var subject_provider = Provider.of<SubjectProvider>(context, listen: true);
    var subjects = subject_provider.subjects.where(
            (element) => element.profileID == ProfileProvider().currentProfile).toList();

    return Scaffold(
        body: subjects.isEmpty
            ? Text('nothing was found')
            : ListView.builder(
                itemBuilder: (context, index) {
                  return TextButton(
                    onPressed: () {
                      /*TODO*/
                    },
                    child: Card(
                      elevation: 10,
                      child: ListTile(
                        leading: const Icon(
                          Icons.sticky_note_2_outlined,
                          color: Color(0xff48A34C),
                        ),
                        title: Text(subjects[index].name),
                        subtitle: Text('modified on: ${subjects[index].date.toString().substring(0, 11)}'),
                        trailing: Text('${subjects[index].timeString} h'),
                        dense: true,
                      ),
                    ),
                  );
                },
                itemCount: subjects.length,
              ));
  }
}
