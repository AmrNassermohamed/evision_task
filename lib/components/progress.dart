import 'package:evision_task/shared/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class Progress extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const Center(
      child: CircularProgressIndicator(

        color:AppColor.black,
      ),
    );
  }

}