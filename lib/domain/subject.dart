class Subject {
  final String _name;
  double _time;
  final String _profileID;
  DateTime _date = DateTime.now();

  Subject({required name, time = 0, profileID})
      : _time = time,
        _name = name,
        _profileID = profileID;

  String get timeString => _time.toString();

  double get time => _time;

  DateTime get date => _date;

  String get name => _name;

  String get profileID => _profileID;
/*  String join_create_defaultprofile() {
    if (ProfileProvider().profiles.contains(Profile(name: 'default profile'))) {
      ProfileProvider().addProfile(Profile(name: 'default profile'));
    }
    return ProfileProvider().profiles.;
  }*/
}
