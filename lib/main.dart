import 'package:flutter/material.dart';
import 'package:flutter_02_learning_app/persistence/profile_provider.dart';
import 'package:flutter_02_learning_app/persistence/screen_provider.dart';
import 'package:flutter_02_learning_app/pages/profile.dart';
import 'package:provider/provider.dart';

// import 'persistence/provider.dart';
import 'persistence/subject_provider.dart';
import 'pages/loading.dart';

void main() => runApp(Start());

class Start extends StatefulWidget {
  const Start({Key? key}) : super(key: key);

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ProfileProvider>(create: (_) => ProfileProvider()),
        ChangeNotifierProvider<SubjectProvider>(create: (_) => SubjectProvider()),
        ChangeNotifierProvider<ScreenProvider>(create: (_) => ScreenProvider())
      ],
      child: MaterialApp(home: Loading()),
    );
  }
}
