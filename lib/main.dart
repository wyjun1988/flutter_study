import 'package:flutter/material.dart';
import 'package:flutter_study/src/basicLayout.dart';
import 'package:flutter_study/src/layoutConstraint.dart';
import 'package:flutter_study/src/simpleLayoutExample.dart';
import 'package:flutter_study/src/stateWidget.dart';

import 'src/basicWidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo'),
        ),
        body: Center(
          child: ParentWidget(),
        ),
      ),
    );
  }
}
