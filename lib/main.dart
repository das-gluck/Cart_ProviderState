
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state/pages/cart.dart';
import 'package:provider_state/pages/product.dart';
import 'package:provider_state/provider/cart_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=> CartProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          brightness: Brightness.light,
          //scaffoldBackgroundColor: Colors.deepPurple
          //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          //useMaterial3: true,
        ),
        darkTheme: ThemeData(
            brightness: Brightness.dark,
            //scaffoldBackgroundColor: Colors.deepPurple
          //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          //useMaterial3: true,
        ),
        initialRoute: "/ProductPage",
        routes: {
          "/ProductPage" : (context) => ProductPage(),
          "/CartPage" : (context) => CartPage(),
        },
      ),
    );
  }
}



