import 'package:flutter/material.dart';

class ReceiveTransportWidget extends StatefulWidget {
  const ReceiveTransportWidget({super.key});

  @override
  State<ReceiveTransportWidget> createState() => _ReceiveTransportWidgetState();
}

class _ReceiveTransportWidgetState extends State<ReceiveTransportWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Nhận giao"),
    );
  }
}
