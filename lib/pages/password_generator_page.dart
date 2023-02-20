import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';
import 'package:tools/custom_widgets/custom_back_button.dart';

import '../custom_widgets/custom_button.dart';
import '../custom_widgets/custom_divider.dart';
import '../custom_widgets/custom_snakbar.dart';
import '../helper/tools_class.dart';

class PasswordGeneratorPage extends StatelessWidget {
  static const String routeName = 'PasswordGeneratorPage';

  const PasswordGeneratorPage({Key? key}) : super(key: key);

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
            const SizedBox(
              height: 150,
            ),
            Container(
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.sp),
                image: const DecorationImage(
                  image: AssetImage('assets/images/password_image.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            CustomButton(
              onTap: () {
                showModalBottomSheet(
                  backgroundColor: Colors.black,
                  context: context,
                  builder: (context) => Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      right: 10,
                      top: 8,
                      bottom: 32,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text(
                          'Password Generated successfully',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const Spacer(),
                        CustomButton(
                          onTap: () async {
                            String password = await Tools.generate();
                            await Clipboard.setData(
                              ClipboardData(
                                text: password,
                              ),
                            );
                            Navigator.pop(context);
                            showSnackBar(
                              context: context,
                              message: 'Password is copied to clipboard',
                            );
                          },
                          label: 'Copy to Clipboard',
                          color: Colors.tealAccent,
                          labelColor: Colors.black,

                          height: 50,
                        ),
                        const Spacer(),
                        const CustomDivider(
                          text: ' OR ',
                        ),
                        const Spacer(),
                        CustomButton(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          label: 'Create new password',
                          color: Colors.tealAccent,
                          labelColor: Colors.black,
                          height: 50,
                        ),
                      ],
                    ),
                  ),
                );
              },
              label: 'Create Password',
              labelColor: Colors.black,
              color: Colors.tealAccent,
              height: 50,
            ),
            const SizedBox(
              height: 100,
            ),
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
