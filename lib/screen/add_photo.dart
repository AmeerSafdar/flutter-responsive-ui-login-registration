
import 'package:bila_fiver/SizeConfig.dart';
import 'package:bila_fiver/const.dart';
import 'package:bila_fiver/screen/secon_register.dart';
import 'package:bila_fiver/widget/appBarWidget.dart';
import 'package:bila_fiver/widget/defaultButton.dart';
import 'package:bila_fiver/widget/iconButton.dart';
import 'package:bila_fiver/widget/input_fileds.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
class AddPhoto extends StatefulWidget {
  const AddPhoto({ Key key }) : super(key: key);

  @override
  _AddPhotoState createState() => _AddPhotoState();
}

class _AddPhotoState extends State<AddPhoto> {
  File img;
  var picked_image;
  Future getImage(a) async{
     if(a){
    picked_image = await ImagePicker().pickImage(source: ImageSource.gallery);
    }
    else{
      picked_image = await ImagePicker().pickImage(source: ImageSource.camera) ;
    }
    setState(() {
      img=picked_image;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:getAppBarAll("Register"),
      body: SingleChildScrollView(
        child: Container(
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButtonWidget(
                onpress: (){
                  Get.back();
              },
              icon: Icons.arrow_back,
              
              ),
              SizedBox(height: 2.4*(SizeConfig.heightMultiplier),),
              Center(child: Text("Add a photo",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),)),
                
              SizedBox(height: 1*(SizeConfig.heightMultiplier),),
              Center(
                child: Stack
                (
                  children: [
                    Center(
                      child: GestureDetector(
                  onTap: (){
                    print("taper image");
                  },
                  child: Container(
                      height: 45*(SizeConfig.heightMultiplier),
                      width: 35*(SizeConfig.heightMultiplier),
                      decoration: BoxDecoration(
                        shape:BoxShape.circle,
                        border:Border.all(color:kyellow,width: 2),
                      ),
                  ),
                ),
                    ),
                Positioned(
                  
                  bottom: 7*(SizeConfig.heightMultiplier),
                  right: 11*(SizeConfig.heightMultiplier),
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      
                    color: kyellow,
                    ),
                    height: 7*(SizeConfig.heightMultiplier),
                    width: 7*(SizeConfig.heightMultiplier),
                    
                  ),
                  
                ),
      
                Positioned(
                  bottom: 7.5*(SizeConfig.heightMultiplier),
                  right: 11.5*(SizeConfig.heightMultiplier),
                  child: Container(
                  child: IconButton(
                    onPressed: (){
                    image_picker_source(context);
                     },
                    
                   icon: Icon(Icons.add)),
                ))
                ],),
      
              ),
              
              SizedBox(height:2 *(SizeConfig.heightMultiplier),),
      
              InputFields(hint: 'Choose from Photos',),
              
              SizedBox(height: 6*(SizeConfig.heightMultiplier),),
              DefaultButton(
                onpress: (){
                  Get.offAll(Reistration_Last());
                },
                btnTxt: 'CONTINUE',
                )
            ],
          )
        ),
      ),
      
    );
  }

  Future<dynamic> image_picker_source(BuildContext context) {
    return showDialog(context: context, builder: (context){
              return AlertDialog(
                title: Text("Choose option"),
                content: SingleChildScrollView(
                  child: ListBody(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap:(){
                            
                                getImage(false);
                          },
                          splashColor: kLightyellow,
                          child: Row(
                            children: [
                              Icon(Icons.camera_alt_rounded,color: kyellow,),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Text("Camera",style: TextStyle(color: kLightyellow),),
                              )
                            ],
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                              onTap:(){
                                getImage(true);
                                },
                          splashColor: kyellow,
                          child: Row(
                            children: [
                              Icon(Icons.camera_sharp,color: kyellow,),
                              Padding(
                                padding: const EdgeInsets.only(left:8.0),
                                child: Text("Gallery",style: TextStyle(color: kLightyellow),),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            });
  }
    
}