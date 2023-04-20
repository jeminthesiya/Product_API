import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:peoduct_api/screen/add_data/view/product_screen.dart';
import 'package:peoduct_api/screen/watch_data/provider/watch_provider.dart';
import 'package:peoduct_api/screen/watch_data/view/watch_screen.dart';
import 'package:provider/provider.dart';
import 'screen/add_data/provider/product_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ProductProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => AddProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => HomeScreen(),
          'add': (context) => AddScreen(),
        },
      ),
    ),
  );
}
