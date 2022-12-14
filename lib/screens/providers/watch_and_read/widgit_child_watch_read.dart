import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../model/model.dart';
import '../../widget/btn_widget.dart';

class WidgetWatchAndRead extends StatelessWidget {
  WidgetWatchAndRead({Key? key}) : super(key: key);
  TextEditingController c = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 200),
          Text(context.watch<Model>().name),
          const SizedBox(height: 20),
          SizedBox(
              width: 300,
              child: TextField(
                controller: c,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              )),
          const SizedBox(height: 20),
          BtnWidget(
              color: Colors.pinkAccent,
              text: 'Show Text',
              onPressed: () {
                context.read<Model>().changeName(c.text);
              },
            textColor: Colors.white,
          )
        ],
      ),
    );
  }
}
