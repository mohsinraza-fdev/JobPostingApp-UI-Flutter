import 'package:flutter/material.dart';

//App Vertical Spacings
const Widget verticalSpaceTiny = SizedBox(height: 11);
const Widget verticalSpaceSmall = SizedBox(height: 14);
const Widget verticalSpaceRegular = SizedBox(height: 20);
const Widget verticalSpaceMedium = SizedBox(height: 59);
const Widget verticalSpaceLarge = SizedBox(height: 67);

//Screen Size
double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;
double statusBarHeight(BuildContext context) =>
    MediaQuery.of(context).padding.top;

//Paddings
EdgeInsets appHorizontalPadding = const EdgeInsets.symmetric(horizontal: 27);
