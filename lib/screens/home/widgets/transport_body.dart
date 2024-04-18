import 'package:app_transport/screens/home/widgets/detail_order.dart';
import 'package:app_transport/screens/home/widgets/receive_body.dart';
import 'package:app_transport/shared/helper/logger.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TransportBodyWidget extends StatefulWidget {
  const TransportBodyWidget({super.key});

  @override
  State<TransportBodyWidget> createState() => _TransportBodyWidgetState();
}

class _TransportBodyWidgetState extends State<TransportBodyWidget> {
  final listTransport = [
    {"icon": "assets/icons/delivery-truck.png", "name": "Giao hàng"},
    {"icon": "assets/icons/delivery-man.png", "name": "Nhận hàng"}
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 20, left: 20, top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Vận chuyển',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          Row(
            children: [
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  Get.to(DetailsOrderWidget(),
                      transition: Transition.rightToLeft);
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 15, bottom: 5),
                      padding: EdgeInsets.all(13),
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 2,
                            color: Color.fromARGB(255, 240, 237, 235)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Image.asset(
                          'assets/icons/delivery-truck.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Text("Giao hàng")
                  ],
                ),
              )),
              SizedBox(
                width: 10,
              ),
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  Get.to(ReceiveBodyWidget(),
                      transition: Transition.rightToLeft);
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 15, bottom: 5),
                      padding: EdgeInsets.all(13),
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 2,
                            color: Color.fromARGB(255, 240, 237, 235)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Image.asset(
                          'assets/icons/delivery-man.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Text("Nhận hàng")
                  ],
                ),
              )),
              Expanded(
                child: SizedBox(),
              ),
              Expanded(child: SizedBox())
            ],
          )
        ],
      ),
    );
  }

  Widget itemTransport(String? imgUrl, String? name) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 15, bottom: 5),
          padding: EdgeInsets.all(13),
          decoration: BoxDecoration(
            border:
                Border.all(width: 2, color: Color.fromARGB(255, 240, 237, 235)),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Image.asset(
              imgUrl ?? 'assets/icons/delivery-truck.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text(name ?? "Nhận hàng")
      ],
    );
  }
}
