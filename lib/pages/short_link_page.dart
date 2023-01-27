import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tools/custom_widgets/custom_text_form_field.dart';

import '../custom_widgets/custom_back_button.dart';
import '../custom_widgets/custom_button.dart';

class ShortLinkPage extends StatelessWidget {
  static const String routeName = 'ShortLinkPage';

  const ShortLinkPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();
    var linkController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.only(
          top: 6.h,
          bottom: 4.h,
          left: 2.5.w,
          right: 2.5.w,
        ),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              const Spacer(),
              CustomTextFormField(
                onSubmitted: (link) {},
                keyboardType: TextInputType.text,
                hintText: 'Paste your link here',
                prefix: Icons.link,
                controller: linkController,
              ),
              const Spacer(),
              CustomButton(
                onTap: () async {
                  // String password = await Tools.generate();
                  // await Clipboard.setData(
                  //   ClipboardData(
                  //     text: password,
                  //   ),
                  // );
                  // Navigator.pop(context);
                  // showSnackBar(
                  //   context: context,
                  //   message: 'Password is copied to clipboard',
                  // );
                },
                label: 'Submit',
                color: Colors.cyanAccent,
                height: 50,
              ),
              const Spacer(),
              CustomButton(
                onTap: () async {
                  // String password = await Tools.generate();
                  // await Clipboard.setData(
                  //   ClipboardData(
                  //     text: password,
                  //   ),
                  // );
                  // Navigator.pop(context);
                  // showSnackBar(
                  //   context: context,
                  //   message: 'Password is copied to clipboard',
                  // );
                },
                label: 'Copy to Clipboard',
                color: Colors.cyanAccent,
                height: 50,
              ),
              const Spacer(),
              CustomBackButton(
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
