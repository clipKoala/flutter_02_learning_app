import '../domain/subject.dart';

class Data {
  var _subjects = <Subject>[
    new Subject('name1', time: 1),
    new Subject('name2', time: 2),
    new Subject('name3'),
    new Subject('name4', time: 10),
    new Subject('name5', time: 7),
  ];


  Data();

  void addSubject(Subject subject) {
    _subjects.add(subject);
  }

  get subjects => _subjects;
}