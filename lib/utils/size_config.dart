import 'package:flutter/cupertino.dart';

class SizeConfig {
//get the width size
  static double widthSize(BuildContext context, double preferredWidth) {
    Size size = MediaQuery.of(context).size;
    return size.width * preferredWidth;
  }

  ///get the height size
  static double heightSize(BuildContext context, double preferredHeight) {
    Size size = MediaQuery.of(context).size;
    return size.height * preferredHeight;
  }
}
