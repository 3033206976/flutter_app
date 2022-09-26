
// ignore_for_file: unnecessary_statements

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/app/app_initialize.dart';
import 'package:flutter_app/view/home/home.dart';
import 'package:leancloud_storage/leancloud.dart';
import 'package:provider/provider.dart';

import 'app/app_model.dart';

void main() async{

  LeanCloud.initialize(
    '9ICdNTin871x7qpkIn4UlTAF-MdYXbMMI', 'upTpMLS9EkUOXO2ecr1Rdgaf',
    server: 'https://please-replace-with-your-customized.domain.com',
    queryCache: new LCQueryCache());

  await AppInitialize().firstInitializ();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AppModel()),
      ],
      child: MaterialApp(
        home: Home(),
        theme: ThemeData(
          fontFamily: "ununtuLight"
        ),
      ),
    )
  );
}