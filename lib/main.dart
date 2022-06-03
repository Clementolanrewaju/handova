import 'package:flutter/material.dart';
import 'package:handova/provider/auth_provider/auth_provider.dart';
import 'package:handova/widgets/shared/splash_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_)=>AuthProvider())
    ],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HandOva',
      home: SplashPage(),
    );
  }
}
