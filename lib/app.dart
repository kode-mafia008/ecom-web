import 'package:flutter/material.dart';
import 'package:gmap/src/constants/ui_constants.dart';
import 'package:gmap/src/ui/screens/home_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MyApp extends ConsumerStatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Circular',
        primaryColor: UIConstant.kWhite,
      ),
      home: const HomeScreen(),
    );
  }
}
