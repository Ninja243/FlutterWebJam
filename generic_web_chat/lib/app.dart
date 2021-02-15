import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:generic_web_chat/config/size_config.dart';
import 'package:get/get.dart';

class MyApp extends StatefulWidget {
  @override
  _MyApp createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeConfig().init(constraints, orientation);

        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: Container(),
        );
      });
    });
  }
}
