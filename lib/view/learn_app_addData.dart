import "package:flutter/material.dart";
import 'package:learn_ease/model/learn_item.dart';
import 'package:learn_ease/controler/learn_app_controller.dart';

class PostItem extends StatefulWidget {
  static const routeName = '/postData';

  @override
  _PostItemState createState() => _PostItemState();
}

class _PostItemState extends State<PostItem> {
  final LearnAppController _learnAppController = LearnAppController();
  List<LearnItem> _learnItems = [];
  @override
  void initState() {
    super.initState();
  }

  void _addDataToApp() async {
    try {
      final data = LearnItem(name: 'test', description: 'test');
      final addItem = await _learnAppController.addData(data);
      print('here good');

      print(addItem);
    } catch (e) {
      print('here error');
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 100,
        ),
        ElevatedButton(
            onPressed: () {
              _addDataToApp();
            },
            child: Text('Add Data')),
      ],
    );
  }
}
