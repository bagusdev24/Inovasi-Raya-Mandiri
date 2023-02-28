import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:irama/app/modules/widgets/space.dart';
import 'package:irama/app/modules/widgets/style.dart';

import '../controllers/notification_controller.dart';

class NotificationView extends GetView<NotificationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        title: Text(
          'Notification',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: ((context, index) {
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: ListTile(
                onTap: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(color: Color.fromARGB(255, 212, 211, 211)),
                ),
                leading: CircleAvatar(
                  child: Image.asset('assets/properti.png'),
                ),
                title: Text(
                  'PT.Inovasi Raya Mandiri',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text('Pesanan sedang diproses'),
                trailing: Column(
                  children: [
                    Text('08"03 Am'),
                    height10(),
                    Icon(
                      Icons.messenger_outlined,
                      color: primaryC,
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
