import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/screens/providers/provider_of/widgit_child.dart';

import '../../../model/model.dart';

class ProviderOfWidget extends StatelessWidget {
  const ProviderOfWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Model(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Provider.Of Example'),
          backgroundColor: Colors.blue,
        ),
        body: WidgetChild(),
      ),
    );
  }
}

