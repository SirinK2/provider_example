import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/screens/cart/shop_home_screen.dart';
import 'package:provider_example/screens/providers/consumer_example.dart';
import 'package:provider_example/screens/providers/multi_provider_widget.dart';
import 'package:provider_example/screens/providers/provider_of/provider_of_example.dart';
import 'package:provider_example/screens/providers/selector_example.dart';
import 'package:provider_example/screens/providers/watch_and_read/watch_and_read_example.dart';
import 'package:provider_example/screens/widget/btn_widget.dart';
import '../../../model/model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Model(),
      child: Scaffold(
          appBar: AppBar(
            title: const Text('Providers'),
          ),
          body: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  height: 50,
                ),
                BtnWidget(
                    color: Colors.amber,
                    text: 'Consumer Example',
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ConsumerWidget()));
                    },
                    textColor: Colors.white),
                BtnWidget(
                    color: Colors.green,
                    text: 'Selector Example',
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SelectorWidget()));
                    },
                    textColor: Colors.white),
                BtnWidget(
                    color: Colors.blue,
                    text: 'Provider of Example',
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ProviderOfWidget()));
                    },
                    textColor: Colors.white),
                BtnWidget(
                    color: Colors.pinkAccent,
                    text: 'Watch & Read Example',
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WatchAndReadWidget()));
                    },
                    textColor: Colors.white),
                BtnWidget(
                    color: Colors.grey,
                    text: 'MultiProvider Example',
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MultiProviderWidget()));
                    },
                    textColor: Colors.white),
                BtnWidget(
                    color: Colors.black,
                    text: 'Example (Cart)',
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>  ShopHomeScreen()));
                    },
                    textColor: Colors.white)
              ],
            ),
          )),
    );
  }
}
