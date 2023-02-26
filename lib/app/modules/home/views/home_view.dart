import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:irama/app/modules/widgets/icon_categori.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Inovasi Raya Mandiri',
          style: TextStyle(
            color: Colors.blue,
          ),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: false,
        actions: [
          Container(
            padding: EdgeInsets.only(right: 20),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                color: Colors.red,
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              width: Get.width,
              height: 130,
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    categoriC('Properti'),
                    categoriC('Properti'),
                    categoriC('Properti'),
                    categoriC('Properti'),
                    categoriC('Properti'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
