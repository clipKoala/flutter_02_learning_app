import 'package:flutter/material.dart';

import '../domain/subject.dart';

class ServiceProvider with ChangeNotifier {

  List<Subject> _subject = <Subject>[];

  List<Subject> get subjects => List.unmodifiable(_subject);
  void addSubject(subject) => _subject.add(subject);
  void deleteSubject(subject) => _subject.remove(subject);
}