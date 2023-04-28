import 'package:flutter/material.dart';

import '../domain/subject.dart';

class SubjectProvider with ChangeNotifier {
  List<Subject> _subject = <Subject>[
    Subject(name: 'name1', profileID: 'name1'),
    Subject(name: 'name2', profileID: 'name1'),
    Subject(name: 'name3', profileID: 'name2'),
    Subject(name: 'name4', profileID: 'name1')
  ];

  List<Subject> get subjects => List.unmodifiable(_subject);

  void addSubject(subject) {
    _subject.add(subject);
    notifyListeners();
  }

  void deleteSubject(subject) {
    _subject.remove(subject);
    notifyListeners();
  }
}
