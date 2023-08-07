import 'package:flutter/material.dart';

class BasicScreen extends StatefulWidget {
  const BasicScreen({super.key});

  @override
  State<BasicScreen> createState() => _BasicScreenState();
}

class _BasicScreenState extends State<BasicScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "All Cars",
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
        brightness: Brightness.light,
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications_none,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 40,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  singleTab(true, "Bmw"),
                  singleTab(false, "Mersades"),
                  singleTab(false, "Audi"),
                  singleTab(false, "Hyundai"),
                  singleTab(false, "Chevrolet"),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            makeItem("assets/images/car1.jpg"),
            makeItem("assets/images/car2.jpg"),
            makeItem("assets/images/car3.jpg"),
            makeItem("assets/images/car4.jpg"),
            makeItem("assets/images/car5.jpg"),
            makeItem("assets/images/car6.jpg"),
            makeItem("assets/images/car7.jpg"),
            makeItem("assets/images/car8.png"),
          ],
        ),
      ),
    );
  }

  Widget singleTab(bool type, String text) {
    return AspectRatio(
      aspectRatio: 2.3 / 1,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
            color: type ? Colors.grey.shade200 : Colors.white,
            borderRadius: BorderRadius.circular(20)),
        child: (Center(
          child: Text(
            text,
            style: TextStyle(fontSize: type ? 20 : 17),
          ),
        )),
      ),
    );
  }

  Widget makeItem(String image) {
    return Container(
      height: 240,
      width: double.maxFinite,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade500,
                blurRadius: 10,
                offset: Offset(0, 10)),
          ]),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
              Colors.black.withOpacity(0.9),
              Colors.black.withOpacity(0.6),
              Colors.black.withOpacity(0.3),
              Colors.black.withOpacity(0.1),
            ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "New 2024",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "BMW Position",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ],
                )),
                Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.favorite_border,
                      size: 20,
                    ),
                  ),
                )
              ],
            ),
            Text(
              "44000\$",
              style: TextStyle(color: Colors.white, fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
