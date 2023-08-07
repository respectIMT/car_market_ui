import 'package:flutter/material.dart';

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
