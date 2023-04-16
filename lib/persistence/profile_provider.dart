import 'package:flutter/material.dart';

import '../domain/profile.dart';

class ProfileProvider with ChangeNotifier {

  List<Profile> _profiles = <Profile>[];

  List<Profile> get profiles => List.unmodifiable(_profiles);
  void addProfile(profile) => _profiles.add(profile);
  void deleteProfile(profile) => _profiles.remove(profile);
}