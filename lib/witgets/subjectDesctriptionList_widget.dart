import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../domain/subject.dart';
import '../persistence/entryData.dart';

import 'subjectDesctriptionEntry_widget.dart';

class DescriptionList extends StatelessWidget {
  DescriptionList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      child: new Data().subjects.isEmpty
          ? Container(
              child: Text('No subjects added!'),
              color: Colors.green,
              padding: const EdgeInsets.all(10),
            )
          : ListView.builder(
              itemCount: new Data().subjects.length,
              itemBuilder: (_, index) => DescriptionEntry(new Data().subjects[index]),
            ),
    );
  }
}
