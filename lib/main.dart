import 'package:flutter/material.dart';
import 'package:flutter_02_learning_app/domain/Subject.dart';
import 'witgets/subject_desctription/subjectDesctriptionList_widget.dart';

void main() {
  runApp(const LearningApp());
}

class LearningApp extends StatelessWidget {
  const LearningApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var subjects = <Subject>[
    new Subject('name1', time: 1),
    new Subject('name2'),
    new Subject('name3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showInput(context),
        child: const Icon(Icons.add),
        backgroundColor: Colors.green,
      ),
      appBar: AppBar(
        leading: Icon(Icons.school),
        title: const Text('My subjects'),
        backgroundColor: Colors.green,
      ),
      body: DescriptionList(subjects: subjects),
    );
  }

  _showInput(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Column(
          children: [
            TextField(
              onSubmitted: (value) {
                var subject = Subject(value);
                setState(() {
                  subjects.add(subject);
                });
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }
}
