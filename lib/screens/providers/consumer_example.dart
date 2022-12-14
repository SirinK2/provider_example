import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../model/model.dart';

class ConsumerWidget extends StatelessWidget {
   ConsumerWidget({Key? key}) : super(key: key);

  TextEditingController c = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Model(),
        child: Scaffold(
          appBar: AppBar(title: const Text('Consumer'), backgroundColor: Colors.amber,),
          body: Column(
            children: [
              SizedBox(height: 200,),

              Consumer<Model>(builder:(context,model,child){
                return Center(
                    child: Text(
                      model.name,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                    )
                );
              }),
              SizedBox(height: 40),
              Container(
                width: 300,
                height: 50,
                child: TextField(
                    controller: c,
                  decoration:  InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                    )
                  ),
                ),
              ),



              SizedBox(height: 40),

              Consumer<Model>(builder: (context,model,child){
                return Container(
                  width: 300,
                  child: MaterialButton(
                      onPressed: (){
                        model.changeName(c.text);

                      },

                    color: Colors.amber,
                    child: const Text('Show new name'),

                  ),
                );
              })
            ],
          ),

        ),
    );
  }
}
