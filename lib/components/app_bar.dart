import 'package:evision_task/components/text_global.dart';
import 'package:evision_task/shared/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

barPage(BuildContext context,title){
  return AppBar(

    centerTitle: true,
    backgroundColor: AppColor.white,
    title: Txt(title,bold: FontWeight.bold,textAlign: TextAlign.left,size: 17.0,weight:
    FontWeight.bold),
  );
}