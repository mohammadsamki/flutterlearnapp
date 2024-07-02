import 'package:flutter/material.dart';

class LearAppApiData extends StatefulWidget {
  static const routeName = '/apidata';
  @override
  _LearAppApiDataState createState() => _LearAppApiDataState();
}

class _LearAppApiDataState extends State<LearAppApiData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Api Data'),
      ),
      body: Center(
        child: Text('Api Data'),
      ),
    );
  }
}
