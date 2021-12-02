import 'package:bila_fiver/SizeConfig.dart';
import 'package:bila_fiver/const.dart';
import 'package:flutter/material.dart';


class IconButtonWidget extends StatelessWidget {
  VoidCallback onpress;
  IconData icon;
   IconButtonWidget({
    Key key,
    this.onpress,
    this.icon
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(
        horizontal: 2* (SizeConfig.heightMultiplier)
        ),
      child: IconButton(
        onPressed: onpress,
         icon: Icon(icon,color: kblack,size: kDefaultpadding*2,)),
    );
  }
}

