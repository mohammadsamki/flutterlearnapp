import "package:flutter/material.dart";
import 'package:learn_ease/model/learn_item.dart';
import 'package:learn_ease/controler/learn_app_controller.dart';

class LearnItemWidget extends StatefulWidget {
  static const routeName = '/getData';

  @override
  _LearnItemWidgetState createState() => _LearnItemWidgetState();
}

class _LearnItemWidgetState extends State<LearnItemWidget> {
  final LearnAppController _learnAppController = LearnAppController();
  late Future<List<LearnItem>> items;

  @override
  void initState() {
    super.initState();
    items = _learnAppController.fetchItem();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<LearnItem>>(
        future: items,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('error ${snapshot.error}'),
            );
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(
              child: Text('no data'),
            );
          } else {
            return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(snapshot.data![index].name),
                    subtitle: Text(snapshot.data![index].description),
                  );
                });
          }
        },
      ),
    );
  }
}
