import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../model/model.dart';

class SelectorWidget extends StatelessWidget {
  const SelectorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Model(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text('Selector Example'),
        ),
        body: Column(
          children: [
            const SizedBox(height: 200),
            Selector<Model, int>(
              selector: (context, modelSelector) => modelSelector.showCounter,
              builder: (context, model, child) {
                return Text('$model');
              },
            ),

            const SizedBox(height: 20),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Consumer<Model>(
                  // selector: (context, modelSelector) => modelSelector.increase(),
                  builder: (context, model, child) {
                    return  SizedBox(
                      width: 100,
                      child: MaterialButton(
                        onPressed: (){
                          model.increase();
                        },
                        color: Colors.green,
                        child: const Text('+', style: TextStyle(color: Colors.white),),
                      ),
                    );

                  },
                ),

                Consumer<Model>(builder: (context, model , child){
                  return SizedBox(
                    width: 100,
                    child: MaterialButton(
                      onPressed: () {
                        model.decrease();
                      },
                      color: Colors.green,
                      child: const Text(
                        '-', style: TextStyle(color: Colors.white),),
                    ),
                  );

                })
              ],
            )


          ],
        ),
      ),

    );
  }
}
