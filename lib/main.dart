import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:syncfusion/BarcodeScanner.dart';
import 'package:syncfusion/Calendar.dart';
import 'package:syncfusion/ChartDemo.dart';
import 'package:syncfusion/PDFViewer.dart';
import 'package:syncfusion/QRcodeGenerator.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  String _url = 'https://indianexpress.com/section/sports/';

  void launchURL() async {
    if (!await launch(_url)) {
      throw 'Could Not Launch $_url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SynfusionDemo(),
    );
  }
}

class SynfusionDemo extends StatelessWidget {
  const SynfusionDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Synfusion Demo'),
      ),
      body: ListView(
        children: [
          DemoItems(
            listTitle: 'Barcode generator',
            demoRoute: BarcodeScanner(),
          ),
          DemoItems(
            listTitle: 'QRcode generator',
            demoRoute: QRcodeGenerator(),
          ),
          DemoItems(
            listTitle: 'Calender',
            demoRoute: Calendar(),
          ),
          DemoItems(
            listTitle: 'PDF viewer',
            demoRoute: PDFViewer(),
          ),
          DemoItems(
            listTitle: 'Chart',
            demoRoute: ChartDemo(),
          ),
          ElevatedButton(
            onPressed: () {
              launchUrl;
            },
            child: Text("Link"),
          )
        ],
      ),
    );
  }
}

class DemoItems extends StatelessWidget {
  DemoItems({Key? key, required this.listTitle, required this.demoRoute})
      : super(key: key);
  String listTitle;
  Widget demoRoute;
  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(listTitle),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => demoRoute),
          );
        });
  }
}
