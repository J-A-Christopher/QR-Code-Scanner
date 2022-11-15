import 'package:flutter/material.dart';
import './qrimage.dart';

class GenerateQRCode extends StatefulWidget {
  const GenerateQRCode({super.key});

  @override
  State<GenerateQRCode> createState() => _GenerateQRCodeState();
}

class _GenerateQRCodeState extends State<GenerateQRCode> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Generate Your QR Code Here'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            child: TextField(
              controller: controller,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Any of Your Credentials'),
            ),
          ),
          ElevatedButton(
              onPressed: () async {
                Navigator.push(context, MaterialPageRoute(builder: ((context) {
                  return QRImage(controller);
                })));
              },
              child: const Text('Generate OR Code'))
        ],
      ),
    );
  }
}
