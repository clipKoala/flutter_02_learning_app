import 'package:flutter/material.dart';
import 'package:flutter_02_learning_app/pages/entries.dart';
import 'package:provider/provider.dart';

import '../../persistence/profile_provider.dart';
import '../../persistence/subject_provider.dart';
import '../persistence/screen_provider.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var profiles_provider = Provider.of<ProfileProvider>(context, listen: true);
    var profiles = profiles_provider.profiles;

    var subject_provider = Provider.of<SubjectProvider>(context, listen: true);
    var subjects = subject_provider.subjects;

    var currentTab = Provider.of<ScreenProvider>(context, listen: true);

    return Scaffold(
        body: profiles.isEmpty
            ? Text('nothing was found')
            : ListView.builder(
                itemBuilder: (context, index) {
                  return MaterialButton(
                    onPressed: () {
                      profiles_provider
                          .changeCurrentProfile(profiles[index].name);
                      currentTab.change_current_tab(1, Entries());
                    },
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
                  );
                },
                itemCount: profiles.length,
              ));
  }
}
