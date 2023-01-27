import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tools/custom_widgets/custom_back_button.dart';

class QRCodePage extends StatelessWidget {
  static const String routeName = 'QRCodePage';

  const QRCodePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.only(
          top: 6.h,
          bottom: 4.h,
          left: 2.5.w,
          right: 2.5.w,
        ),
        child: Column(
          children: [

            CustomBackButton(
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
