import 'package:flutter/material.dart';
import 'package:flutter_02_learning_app/domain/subject.dart';

class Profile {
  String _name;
  Color _color;
  var _subjects = <Subject>[];


  Profile({required name, color = const Color(0xff48A34C)})
      : _color = color,
        _name = name;

  get subjects => List.unmodifiable(_subjects);
  void addSubject(subject) => _subjects.add(subject);
  void deleteSubject(value) => _subjects.retainWhere((element) => element.)

  Color get color => _color;
  set color(Color value) => _color = value;

  String get name => _name;
  set name(String value) => _name = value;
}
