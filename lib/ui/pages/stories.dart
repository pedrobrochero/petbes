import 'package:flutter/material.dart';
import 'package:petbes/generated/l10n.dart';
import 'package:petbes/misc/service_locator.dart';

class StoriesUI extends StatelessWidget {
  static const route = 'stories';
  const StoriesUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final s = sl<S>();
    return Scaffold(
        body: ListView.builder(
      itemCount: 50,
      itemBuilder: (context, index) {
        return Card(child: ListTile(title: Text('$index')));
      },
    ));
  }
}
