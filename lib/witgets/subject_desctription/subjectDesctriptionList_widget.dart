import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_02_learning_app/domain/Subject.dart';

import 'subjectDesctriptionEntry_widget.dart';

class DescriptionList extends StatelessWidget {
  DescriptionList({
    super.key,
    required this.subjects,
  });

  final List<Subject> subjects;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      child: subjects.isEmpty
          ? Container(
              child: Text('No subjects added!'),
              color: Colors.green,
              padding: const EdgeInsets.all(10),
            )
          : ListView.builder(
              itemCount: subjects.length,
              itemBuilder: (_, index) => DescriptionEntry(subjects[index]),
            ),
    );
  }
}
