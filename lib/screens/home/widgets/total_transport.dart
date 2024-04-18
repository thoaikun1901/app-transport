import 'package:flutter/material.dart';

class TotalTransportWidget extends StatefulWidget {
  const TotalTransportWidget({super.key});

  @override
  State<TotalTransportWidget> createState() => _TotalTransportWidgetState();
}

class _TotalTransportWidgetState extends State<TotalTransportWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Tổng giao"),
    );
  }
}
