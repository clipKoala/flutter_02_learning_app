import 'package:flutter/material.dart';

class Profile {
  final _id = UniqueKey();
  String _name;

  Profile({required name})
      : _name = name;

  String get name => _name;
  set name(String value) => _name = value;

  UniqueKey get id => _id;
}
