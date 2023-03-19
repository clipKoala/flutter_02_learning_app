import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_02_learning_app/domain/subject.dart';

import 'subjectValueEntry_widget.dart';



class DescriptionEntry extends StatelessWidget {
  DescriptionEntry(this.subject_description, {Key? key});

  final Subject subject_description;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(subject_description.name),
      child: Card(
        elevation: 100,
        child: Container(
          margin: const EdgeInsets.fromLTRB(15, 5, 15, 0),
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          height: 50,
          child: Entry_rowValue_widget(subject_description),
        ),
      ),
    );
  }
}
