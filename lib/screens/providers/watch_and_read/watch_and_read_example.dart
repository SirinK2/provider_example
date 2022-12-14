import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/screens/providers/watch_and_read/widgit_child_watch_read.dart';
import '../../../model/model.dart';

class WatchAndReadWidget extends StatelessWidget {
   WatchAndReadWidget({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Model(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Watch & Read Example'),
          backgroundColor: Colors.pinkAccent,
        ),

        body: WidgetWatchAndRead(),
      ),

    );
  }
}
