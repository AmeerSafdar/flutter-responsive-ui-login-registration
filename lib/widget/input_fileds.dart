import 'package:bila_fiver/SizeConfig.dart';
import 'package:flutter/material.dart';
class InputFields extends StatelessWidget {
  String hint;
   InputFields({
    Key key,
     this.hint
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(
        horizontal:3*(SizeConfig.heightMultiplier),
        vertical:2*(SizeConfig.heightMultiplier)

        ),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: '$hint',
          contentPadding:  EdgeInsets.symmetric(horizontal:2*( SizeConfig.heightMultiplier)),
          border: OutlineInputBorder()


        ),
      ),
    );
  }
}