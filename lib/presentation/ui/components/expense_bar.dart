
  import 'dart:math';

import 'package:flutter/material.dart';

Widget costBar(String weekday, Color color) {
    return 
   Column(
        children: [
          Flexible(
            fit: FlexFit.loose,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color:color, width: 1)),
              alignment: Alignment.bottomCenter,
              margin: const EdgeInsets.all(10),
              height: 120,
              width: 15,
              padding: const EdgeInsets.symmetric(horizontal: 1),
              child: Container(
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(30),
                ),
                height: Random().nextDouble() * 80,
                width: 13,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(weekday,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              )),
          // Text('R\$ 199,00',
          //     style:  TextStyle(
          //       fontSize: 14,
          //       fontWeight: FontWeight.bold,
          //        color: color
            //  ))
        ],
      );
    
  }