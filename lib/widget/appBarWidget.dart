import 'package:bila_fiver/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
AppBar getAppBarAll(String txt){
  return AppBar(
      title: Text(txt),
      backgroundColor: kblack,
      backwardsCompatibility: false,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
        statusBarColor: kblack,
        statusBarIconBrightness: Brightness.light

        ),
    );
}