import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tools/custom_widgets/custom_app_title.dart';
import 'package:tools/custom_widgets/custom_tool_container.dart';
import 'package:tools/pages/password_generator_page.dart';
import 'package:tools/pages/qr_code_page.dart';

class HomePage extends StatelessWidget {
  static const String routeName = 'HomePage';

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: HomeBody(),
    );
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.only(
          top: 6.h,
          bottom: 4.h,
          left: 2.5.w,
          right: 2.5.w,
        ),
        child: Column(
          children: [
            const CustomAppTitle(
              title: 'Tools',
            ),
            SizedBox(
              height: 3.h,
            ),
            CustomToolContainer(
              title: 'Password Generator',
              imageName: 'password_image.jpg',
              onTap: () {
                Navigator.pushNamed(
                  context,
                  PasswordGeneratorPage.routeName,
                );
              },
            ),
            SizedBox(
              height: 3.h,
            ),
            CustomToolContainer(
              title: 'QR Generator',
              imageName: 'QR_image.png',
              onTap: () {
                Navigator.pushNamed(
                  context,
                  QRCodePage.routeName,
                );
              },
            ),
            // SizedBox(
            //   height: 3.h,
            // ),
            // CustomToolContainer(
            //   title: 'Link Shortener',
            //   imageName: 'link_shortner_image.jpg',
            //   onTap: (){
            //     Navigator.pushNamed(
            //       context,
            //       ShortLinkPage.routeName,
            //     );
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
