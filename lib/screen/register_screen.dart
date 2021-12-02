import 'package:bila_fiver/SizeConfig.dart';
import 'package:bila_fiver/const.dart';
import 'package:bila_fiver/screen/Login.dart';
import 'package:bila_fiver/widget/RichText.dart';
import 'package:bila_fiver/widget/appBarWidget.dart';
import 'package:bila_fiver/widget/defaultButton.dart';
import 'package:bila_fiver/widget/iconButton.dart';
import 'package:bila_fiver/widget/input_fileds.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({ Key key }) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:kwhite,
      appBar: getAppBarAll('Register'),

      body: SingleChildScrollView(
        child: Container(
      
          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
      
             IconButtonWidget(
               onpress:(){},
               icon:Icons.close
             ),

            SizedBox(height: 5* (SizeConfig.heightMultiplier),),
            InputFields(hint:'Birthday'),
            InputFields(hint:'Occupation'),
            InputFields(hint:'Gender'),
            InputFields(hint:'Education'),
            InputFields(hint:'Height'),
            
            RichTextWidget(hint:"Bio"),
            
            SizedBox(height:2.5* (SizeConfig.heightMultiplier)),
            DefaultButton(btnTxt:'CONTINUE',onpress:(){
              Get.to(LoginPage());
            })

            ],
          ),
        ),
      ),
    );
  }


}
