import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRImage extends StatelessWidget {
  final TextEditingController controller;

  const QRImage(this.controller, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('QR Code'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Center(
              child: QrImage(
                data: controller.text,
                size: 280,
                embeddedImageStyle:
                    QrEmbeddedImageStyle(size: const Size(100, 100)),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
          ],
        ));
  }
}
