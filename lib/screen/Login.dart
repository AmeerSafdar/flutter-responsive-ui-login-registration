import 'package:bila_fiver/SizeConfig.dart';
import 'package:bila_fiver/screen/add_photo.dart';
import 'package:bila_fiver/widget/appBarWidget.dart';
import 'package:bila_fiver/widget/defaultButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key key }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:   getAppBarAll('Login'),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
            Padding(
              padding:  EdgeInsets.symmetric(
                horizontal:4*(SizeConfig.heightMultiplier),
                vertical: 2.6*(SizeConfig.heightMultiplier),
                ),
              child: Text("Login to your account",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 3.5*(SizeConfig.heightMultiplier)),
      
            input_login_widget(hint: 'Email',),
            input_login_widget(hint: 'Password',),
            Spacer(),
      
            DefaultButton(
              btnTxt: 'LOGIN',
              onpress: (){
                Get.offAll(AddPhoto(),);
            },),
      
            SizedBox(height: 2.5*(SizeConfig.heightMultiplier),)
      
          ],
        ),
      ),
      
    );
  }

}

class input_login_widget extends StatelessWidget {
  String hint;
   input_login_widget({
     this.hint,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(
        vertical : 0.6*(SizeConfig.heightMultiplier),
        horizontal: 4*(SizeConfig.heightMultiplier),
        ),
      child: TextFormField(
         // controller: TextEditingController(),
        // onChanged: (val){
        //   print(val);
        // },
        decoration: InputDecoration(
          hintText: '$hint',
          contentPadding: EdgeInsets.all(0.2*(SizeConfig.heightMultiplier))
        ),
      ),
    );
  }
}