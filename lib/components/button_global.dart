import 'package:evision_task/shared/color.dart';
import 'package:flutter/material.dart';


Widget customElevatedButtonWithIcon(context,
    {required String title,
      required Function? function,
      bool isUpperCase = true,
      bool showSpacing = true,
      Color backGroundColor = AppColor.black,
      Color color = Colors.white,
      double? width,
      double? height,
      Widget? rightIcon,
      Widget? leftIcon,
      double radius = 10,
      bool showCustomRadius = false,
      BorderRadiusGeometry? borderRadius}) =>
    SizedBox(
      height:height?? 50.0,
      width: width,
      child: ElevatedButton(
        clipBehavior: Clip.hardEdge,
        onPressed: function == null ? null : () => function(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            rightIcon ?? SizedBox.shrink(),
            showSpacing ? Spacer() : SizedBox.shrink(),
            Padding(
              padding: EdgeInsets.all(0),
              child: Text(title,textAlign: TextAlign.center,),
            ),
            showSpacing ? Spacer() : SizedBox.shrink(),
            leftIcon ?? SizedBox.shrink()
          ],
        ),
        style: ElevatedButton.styleFrom(
            elevation: 0,
            primary: backGroundColor,
            onPrimary: color,
            textStyle: Theme.of(context).textTheme.headline6,
            shape: RoundedRectangleBorder(
                borderRadius: showCustomRadius
                    ? borderRadius ?? BorderRadius.circular(5)
                    : BorderRadius.circular(radius))),
      ),
    );