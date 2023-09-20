import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_barcodes/barcodes.dart';

class BarcodeScanner extends StatelessWidget {
  const BarcodeScanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scan the Barcode'),
      ),
      body: Center(
        child: Container(
          height: 150,
          child: SfBarcodeGenerator(value: 'https://cybersquare.org/'),
        ),
      ),
    );
  }
}
