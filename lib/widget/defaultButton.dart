import 'package:bila_fiver/SizeConfig.dart';
import 'package:bila_fiver/const.dart';
import 'package:flutter/material.dart';
class DefaultButton extends StatelessWidget {
  String btnTxt ;
  VoidCallback onpress;
   DefaultButton({
    Key key,
    this.btnTxt,
    this.onpress
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(2*(SizeConfig.heightMultiplier)),
      child: MaterialButton(
        onPressed: onpress,
      color: kLightyellow,
      minWidth: double.infinity,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)
      ),
      child:Text(btnTxt)

      ),
    );
  }
}

