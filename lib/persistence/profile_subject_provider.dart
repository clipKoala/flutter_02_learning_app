import 'package:flutter/material.dart';

import '../domain/profile.dart';
import '../domain/subject.dart';

class ProfileSubjectProvider with ChangeNotifier{

  Map<Profile, List<Subject>> _connection = <Profile, List<Subject>>{};

  Map<Profile, List<Subject>> get connection => Map.unmodifiable(_connection);

  void addConnection(Profile profile, Subject subject) {
    if (!_connection.containsKey(profile)) {
      List<Subject> list = <Subject>[];
      _connection[profile] = list;
    }
    _connection[profile]!.add(subject);
  }

  void deleteProfile(connection) => _connection.remove(connection);
}
