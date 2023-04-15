import 'package:flutter/material.dart';

import '../domain/subject.dart';
import '../persistence/entryData.dart';

class EntryService {

  showInput(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Column(
          children: [
            TextField(
              onSubmitted: (value) {
                var subject = Subject(value);
                //state(() {
                  new Data().addSubject(subject);
                //});
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }
}