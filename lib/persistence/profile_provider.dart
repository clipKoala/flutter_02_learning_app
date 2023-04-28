import 'package:flutter/material.dart';

import '../domain/profile.dart';

class ProfileProvider with ChangeNotifier {
  List<Profile> _profiles = <Profile>[
    Profile(name: "name1"),
    Profile(name: "name2"),
    Profile(name: "name3")
  ];

  static var _currentProfile = '';

  get currentProfile => _currentProfile;

  void changeCurrentProfile(String value) {
    _currentProfile = value;
    notifyListeners();
  }

  List<Profile> get profiles => List.unmodifiable(_profiles);

  void addProfile(profile) {
    _profiles.add(profile);
    notifyListeners();
  }

  void deleteProfile(profile) {
    _profiles.remove(profile);
    notifyListeners();
  }
}
