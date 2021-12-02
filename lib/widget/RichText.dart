import 'package:bila_fiver/SizeConfig.dart';
import 'package:flutter/material.dart';
class RichTextWidget extends StatelessWidget {
  String hint;
   RichTextWidget({
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
    contentPadding:  EdgeInsets.all(( SizeConfig.heightMultiplier))*3.8,
    
    border: OutlineInputBorder()
      
      
          ),
        ),
          );
  }
}