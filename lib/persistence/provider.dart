import 'package:flutter/material.dart';

import '../domain/subject.dart';
import '../domain/profile.dart';

class LeApProvider with ChangeNotifier {
  //Subjects
  List<Subject> _subject = <Subject>[
    Subject(name: 'name1'),
    Subject(name: 'name2'),
    Subject(name: 'name3'),
    Subject(name: 'name4')
  ];

  List<Subject> get subjects => List.unmodifiable(_subject);

  void addSubject(subject) => _subject.add(subject);
  void deleteSubject(subject) => _subject.remove(subject);


  //Profile
  List<Profile> _profiles = <Profile>[
    Profile(name: 'name1'),
    Profile(name: 'name3'),
    Profile(name: 'name2'),
  ];

  List<Profile> get profiles => List.unmodifiable(_profiles);
  void addProfile(profile) => _profiles.add(profile);
  // void deleteProfile(profile) => _profiles.remove(profile);


  //ProfileSubject
  Map<Profile, List<Subject>> _connection = <Profile, List<Subject>>{};

  Map<Profile, List<Subject>> get connection => Map.unmodifiable(_connection);

  void addConnection(Profile profile, Subject subject) {
    if (!_connection.containsKey(profile)) {
      List<Subject> list = <Subject>[];
      _connection[profile] = list;
    }
    _connection[profile]!.add(subject);
  }

  void deleteProfile(profile) => _connection.remove(profile);
}
