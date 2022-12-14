import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'model/cart_model/cart.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) => Cart(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(

          primarySwatch: Colors.deepPurple,
        ),
        debugShowCheckedModeBanner: false,
        home: const HomeScreen(),
      )
    );
  }
}

