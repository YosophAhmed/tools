import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tools/custom_widgets/custom_app_title.dart';
import 'package:tools/custom_widgets/custom_tool_container.dart';

class HomePage extends StatelessWidget {
  static const String routeName = 'HomePage';

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeBody(),
    );
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
          top: 6.h,
          bottom: 2.h,
          left: 2.w,
          right: 2.w,
        ),
        child: Column(
          children: [
            CustomAppTitle(
              title: 'Tools',
            ),
            SizedBox(
              height: 2.h,
            ),
            // CustomToolContainer(
            //   title: 'Link Shortener',
            //   imageName: 'link_shortner_image.jpg',
            // ),
          ],
        ),
      ),
    );
  }
}
