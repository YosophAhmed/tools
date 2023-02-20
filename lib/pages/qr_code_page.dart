import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../custom_widgets/custom_back_button.dart';
import '../custom_widgets/custom_text_form_field.dart';
import '../data/app_data.dart';

class QRCodePage extends StatefulWidget {
  static const String routeName = 'QRCodePage';

  const QRCodePage({Key? key}) : super(key: key);

  @override
  State<QRCodePage> createState() => _QRCodePageState();
}

class _QRCodePageState extends State<QRCodePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 150,
              ),
              Hero(
                tag: 'QR_image.png',
                child: Center(
                  child: QrImage(
                    data: AppData.qrData,
                    version: QrVersions.auto,
                    backgroundColor: Colors.white,
                    size: 300,
                  ),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              CustomTextFormField(
                keyboardType: TextInputType.text,
                color: Colors.tealAccent,
                hintText: 'Generate QR Code',
                prefix: Icons.abc,
                onSubmitted: (value){
                  setState(() {
                    AppData.qrData = value;
                  });
                },
                onChanged: (value){
                  setState(() {
                    AppData.qrData = value;
                  });
                },
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
      ),
    );
  }
}
