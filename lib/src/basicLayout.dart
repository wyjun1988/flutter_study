import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

var stars = Center(
    child: Row(
  mainAxisSize: MainAxisSize.min,
  children: [
    Icon(Icons.stars, color: Colors.green[500]),
    Icon(Icons.stars, color: Colors.green[500]),
    Icon(Icons.stars, color: Colors.green[500]),
    Icon(Icons.stars, color: Colors.black),
    Icon(Icons.stars, color: Colors.black)
  ],
));

// container example
Widget buildImageColumn() => Container(
  decoration: BoxDecoration(
    color: Colors.greenAccent,
  ),
  child: Column(
    children: [
      //_buildImageRow(1),
      //_buildImageRow(3),
      _buildStack(),
    ],
  ),
);

Widget _buildImageRow (int imageIndex) =>Row(
  children: [
    _buildDecoratedImage(imageIndex),
    _buildDecoratedImage(imageIndex+1),
  ],
);

Widget _buildDecoratedImage(int imageIndex) => Expanded(
  child: Container(
    decoration: BoxDecoration(
      border: Border.all(width: 10, color: Colors.blue),
      borderRadius: const BorderRadius.all(const Radius.circular(8)),
    ),
    margin: const EdgeInsets.all(4),
    child: Image.asset('graphics/test.jpg'),
  )
);


Widget _buildStack() => Stack(
  alignment: const Alignment(0.1, 0.1),
  children: [
    CircleAvatar(
      backgroundImage: AssetImage('graphics/test.jpg'),
      radius: 100,
    ),
    CircleAvatar(
      backgroundImage: AssetImage('graphics/test.jpg'),
      radius: 50,
    ),
  ],
);