import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_barcodes/barcodes.dart';

class QRcodeGenerator extends StatelessWidget {
  const QRcodeGenerator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scan the QR code'),
      ),
      body: Center(
        child: Center(
          child: Container(
            height: 350,
            width: 350,
            child: SfBarcodeGenerator(
              value: 'https://cybersquare.org/',
              symbology: QRCode(),
            ),
          ),
        ),
      ),
    );
  }
}
