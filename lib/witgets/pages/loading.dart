import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_02_learning_app/witgets/pages/home.dart';

class Loading extends StatelessWidget {
  Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TweenAnimationBuilder(
          duration: const Duration(seconds: 1),
          tween: Tween<double>(begin: 0, end: 1),
          builder: (BuildContext context, double value, Widget? child) {
            return Opacity(
              opacity: value,
              child: child,
            );
          },
          child: const LoadingPageContent(),
          onEnd: () => waite(context, 3, const Home())),
    );
  }

  void moveTo(BuildContext context, Widget nextPage) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => nextPage,
    ));
  }

  void waite(BuildContext context, int time, Widget nextPage) {
    Timer(
      Duration(seconds: time),
      () => moveTo(context, nextPage),
    );
    // sleep(Duration(microseconds: time));
  }
}

class LoadingPageContent extends StatelessWidget {
  const LoadingPageContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.white,
      child: Column(
        children: const [
          Icon(
            Icons.school_rounded,
            color: Color(0xff48a34c),
            size: 250,
          ),
          Text(
            'Learning App',
            style: TextStyle(
              color: Color(0xff48a34c),
              fontSize: 50,
            ),
          )
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    );
  }
}
