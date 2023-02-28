import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  List _categori = [];

  Future<void> readJson() async {
    final String response = await rootBundle.loadString('api/categori.json');
    final data = await json.decode(response);
    @override
    void initState() {
      // Call the readJson method when the app starts
      readJson();
    }
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
