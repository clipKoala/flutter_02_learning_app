import 'package:flutter/material.dart';
import 'package:flutter_02_learning_app/persistence/profile_provider.dart';
import 'package:flutter_02_learning_app/persistence/profile_subject_provider.dart';
import 'package:flutter_02_learning_app/witgets/pages/home.dart';
import 'package:provider/provider.dart';

import 'persistence/provider.dart';
import 'persistence/subject_provider.dart';
import 'witgets/pages/loading.dart';

void main() => runApp(Start());

class Start extends StatelessWidget {
  const Start({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => LeApProvider(),
        child: MaterialApp(
          home: Loading(),
        ));
  }
}
