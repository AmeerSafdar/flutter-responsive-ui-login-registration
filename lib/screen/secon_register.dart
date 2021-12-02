import 'package:bila_fiver/SizeConfig.dart';
import 'package:bila_fiver/screen/register_screen.dart';
import 'package:bila_fiver/widget/appBarWidget.dart';
import 'package:bila_fiver/widget/defaultButton.dart';
import 'package:bila_fiver/widget/iconButton.dart';
import 'package:bila_fiver/widget/input_fileds.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Reistration_Last extends StatefulWidget {
  const Reistration_Last({ Key key }) : super(key: key);

  @override
  _ReistrationState createState() => _ReistrationState();
}

class _ReistrationState extends State<Reistration_Last> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBarAll('Register'),


    body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButtonWidget(
          icon: Icons.arrow_back,
        ),
        SizedBox(
          height: 5*(SizeConfig.heightMultiplier),
        ),
    
        InputFields(
          hint: 'Email',),
    
          InputFields(
          hint: 'Password',
          
        ),
        Spacer(flex: 2,),
            
        SizedBox(
          
          height: 2*(SizeConfig.heightMultiplier),
        ),

        DefaultButton(
        btnTxt: 'REGSISTER',onpress: (){
          Get.offAll(RegisterScreen());
        },
        ),


        SizedBox(
          
          height: 3*(SizeConfig.heightMultiplier),
        )
      ],
    ),
    );
  }
}