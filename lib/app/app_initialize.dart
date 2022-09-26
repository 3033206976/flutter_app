
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../view/appbar/appbar.dart';

  final getIt = GetIt.instance;

//实例工厂
class AppInitialize {
  
   Future<void> firstInitializ() async {
     getIt.registerLazySingleton<AllScaffold>(() => AllScaffold());
  }
}