import 'package:app_transport/shared/helper/logger.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingProfileWidget extends StatefulWidget {
  const SettingProfileWidget({super.key});

  @override
  State<SettingProfileWidget> createState() => _SettingProfileWidgetState();
}

class _SettingProfileWidgetState extends State<SettingProfileWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 20, left: 20, top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 15, bottom: 5),
                    padding: EdgeInsets.all(18),
                    decoration: BoxDecoration(
                      border: Border.all(
                          width: 2, color: Color.fromARGB(255, 240, 237, 235)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/icons/insurance.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text("Chính sách")
                ],
              )),
              SizedBox(
                width: 10,
              ),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 15, bottom: 5),
                    padding: EdgeInsets.all(18),
                    decoration: BoxDecoration(
                      border: Border.all(
                          width: 2, color: Color.fromARGB(255, 240, 237, 235)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/icons/convert.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text("Chuyển đổi")
                ],
              )),
              SizedBox(
                width: 10,
              ),
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  Get.toNamed('/login');
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 15, bottom: 5),
                      padding: EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 2,
                            color: Color.fromARGB(255, 240, 237, 235)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Image.asset(
                          'assets/icons/logout.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Text("Đăng xuất")
                  ],
                ),
              )),
              Expanded(child: SizedBox())
            ],
          )
        ],
      ),
    );
  }
}
