import 'package:bandage/category_screen.dart';
import 'package:bandage/feature/Chatpage/dio.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'feature/blocobserv.dart';

void main() async {
  
  WidgetsFlutterBinding.ensureInitialized();
  await DioApp.init(); 
  Bloc.observer = MyBlocObserver();
 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CategoryScreen(),
    );
  }
}

  /*
  
  lang device 
   print(WidgetsBinding.instance.window.locale);
   */