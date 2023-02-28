import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SemuaCategori extends StatelessWidget {
  const SemuaCategori({super.key});

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
            'All Categori',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          centerTitle: true,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GridList(),
              ],
            ),
          ),
        ));
  }
}

class GridList extends StatelessWidget {
  // const GridList({
  //   Key? key,
  //   required List get,
  // }) : _get = get, super(key: key);

  // final List _get;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      //wajib menggunakan 2 baris script di bawah ini, agar dapat digabung dengan widget lain
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,

      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          // banyak grid yang ditampilkan dalam satu baris
          crossAxisCount: 3),
      itemBuilder: (_, index) => Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        width: 60,
        height: 80,
        child: InkWell(
          onTap: () {},
          child: Card(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: Get.width,
                    height: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/rias.png',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "No Title",
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),

      itemCount: 8,
    );
  }
}
