import 'package:flutter/material.dart';
// bottom up

// image section
Widget imageSection() => Image.asset(
      'graphics/test.jpg',
      fit: BoxFit.cover,
    );

// title section
Widget titleSection() => Container(
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
      ),
      child: Row(
        children: [
          placeName(),
          Icon(Icons.star, color: Colors.red[500]),
          Text('41')
        ],
      ),
    );

Widget placeName() => Expanded(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        placeNameText("Korea"),
        placeDescriptionText("good place to go"),
      ],
    ));

Widget placeNameText(String data) => Text(
      data,
      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      textAlign: TextAlign.start,
    );
Widget placeDescriptionText(String data) => Text(
      data,
      style: TextStyle(color: Colors.grey),
    );

// button section
Widget buttonSection(Color color) => Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buttonColumn(color, Icons.call, 'CALL'),
          buttonColumn(color, Icons.near_me, 'ROUTE'),
          buttonColumn(color, Icons.share, 'SHARE')

        ],
      ),
    );

Widget buttonColumn(Color color, IconData icon, String label) => Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
                fontSize: 12, fontWeight: FontWeight.w400, color: color),
          ),
        )
      ],
    );
