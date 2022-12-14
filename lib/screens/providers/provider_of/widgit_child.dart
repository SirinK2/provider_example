import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../model/model.dart';


import '../../widget/btn_widget.dart';

class WidgetChild extends StatelessWidget {
  WidgetChild({Key? key}) : super(key: key);
  TextEditingController c = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var model = Provider.of<Model>(context);
    return Column(
      children: [

        const SizedBox(
          height: 200,
        ),
        Center(child: Text(model.name)),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
            width: 300,
            child: TextField(
              controller: c,
              decoration: InputDecoration(
                  border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
            )),
        const SizedBox(
          height: 20,
        ),

        BtnWidget(
            color: Colors.blue,
            text: 'Do Something',
            onPressed: () {
              model.changeName(c.text);
            },
          textColor: Colors.white,
            )
      ],
    );
  }
}
