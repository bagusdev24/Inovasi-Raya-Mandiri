import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:irama/app/modules/widgets/style.dart';

import '../controllers/account_info_controller.dart';

class AccountInfoView extends GetView<AccountInfoController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryC,
        elevation: 0,
        title: Text('Account Info'),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Edit',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Account Info View',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
