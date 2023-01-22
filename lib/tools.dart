import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tools/pages/home_page.dart';
import 'package:tools/pages/password_generator_page.dart';
import 'package:tools/pages/qr_code_page.dart';
import 'package:tools/pages/short_link_page.dart';

class Tools extends StatelessWidget {
  const Tools({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            brightness: Brightness.dark,
            fontFamily: 'Poppins',
          ),
          routes: {
            HomePage.routeName: (context) => const HomePage(),
            ShortLinkPage.routeName: (context) => const ShortLinkPage(),
            QRCodePage.routeName: (context) => const QRCodePage(),
            PasswordGeneratorPage.routeName: (context) =>
                const PasswordGeneratorPage(),
          },
          initialRoute: HomePage.routeName,
        );
      },
    );
  }
}
