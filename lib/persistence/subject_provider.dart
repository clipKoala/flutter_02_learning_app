// import 'package:flutter/material.dart';
//
// import '../domain/subject.dart';
//
// class SubjectProvider with ChangeNotifier {
//
//   List<Subject> _subject = <Subject>[
//     Subject(name: 'name1'),
//     Subject(name: 'name2'),
//     Subject(name: 'name3'),
//     Subject(name: 'name4')
//   ];
//
//   List<Subject> get subjects => List.unmodifiable(_subject);
//   void addSubject(subject) => _subject.add(subject);
//   void deleteSubject(subject) => _subject.remove(subject);
// }