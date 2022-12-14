import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/model/model.dart';
import 'package:provider_example/model/model_two.dart';
import 'package:provider_example/screens/widget/btn_widget.dart';

class MultiProviderWidget extends StatelessWidget {
  const MultiProviderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MultiProvider Example'),
        backgroundColor: Colors.grey,
      ),
      body: MultiProvider(
        providers: [

          ChangeNotifierProvider(create: (context) {
            return Model();
          }),

          ChangeNotifierProvider(create: (context){
            return ModelTwo();
          })

        ],
        child: Column(
          children: [
            SizedBox(height: 100),
            Center(
              child: Consumer<Model>(builder: (context, model, child) {
                return Container(
                  height: 300,
                  width: 300,
                  decoration: ShapeDecoration(
                      shape: const CircleBorder(), color: model.redColor),
                  child: Center(
                    child: Text(context.watch<ModelTwo>().colorText, style: const TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                );
              }),
            ),
            Consumer<Model>(builder: (context, model, child) {
              return BtnWidget(
                  color: Colors.blueAccent,
                  text: 'Blue',
                  onPressed: () {
                    model.changeColorToBlue(Colors.blueAccent);
                    context.read<ModelTwo>().changeColorText('Blue');
                  },
              textColor: Colors.white,);
            }),
            Consumer<Model>(builder: (context, model, child) {
              return BtnWidget(
                  color: Colors.green,
                  text: 'Green',
                  onPressed: () {
                    model.changeColorToBlue(Colors.green);
                    context.read<ModelTwo>().changeColorText('Green');

                  }, textColor: Colors.white);
            }),
            Consumer<Model>(builder: (context, model, child) {
              return BtnWidget(
                  color: Colors.red,
                  text: 'Red',
                  onPressed: () {
                    model.changeColorToBlue(Colors.red);
                    context.read<ModelTwo>().changeColorText('Red');

                  },  textColor: Colors.white);
            })
          ],
        ),
      ),
    );
  }
}
