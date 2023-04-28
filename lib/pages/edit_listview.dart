import 'package:flutter/material.dart';
import 'package:flutter_02_learning_app/pages/entries.dart';
import 'package:provider/provider.dart';

import '../persistence/profile_provider.dart';
import '../persistence/subject_provider.dart';

class EditListView extends StatelessWidget {
  EditListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var profiles_provider = Provider.of<ProfileProvider>(context, listen: true);
    var profiles = profiles_provider.profiles;

    var subject_provider = Provider.of<SubjectProvider>(context, listen: true);
    var subjects = subject_provider.subjects;

    return Scaffold(
        body: profiles.isEmpty
            ? Text('nothing was found')
            : ListView.builder(
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(0),
                  child: MaterialButton(
                    onPressed: () {},
                    child: Card(
                      elevation: 10,
                      child: ListTile(
                        leading: const Icon(
                          Icons.home_work_outlined,
                          color: Color(0xff48A34C),
                        ),
                        title: Text(profiles[index].name),
                        subtitle: subjects
                            .where((element) =>
                        element.profileID == profiles[index].name)
                            .toList()
                            .isEmpty
                            ? const Text('no entries!')
                            : Text(
                            "amount of entries: ${subjects.where((element) => element.profileID == profiles[index].name).length}"),
                        dense: true,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                  padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                  decoration: const BoxDecoration(
                    color: Color(0xff48a34c),
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                  ),
                  child: subjects.isEmpty
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
                    shrinkWrap: true,
                  ),
                )
              ],
            );
          },
          itemCount: profiles.length,
          shrinkWrap: true,
        )
    );
  }
}
