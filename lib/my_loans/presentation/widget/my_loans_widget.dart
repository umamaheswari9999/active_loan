
import 'dart:js';

import 'package:flutter/material.dart';

Widget _menuItem(String title, IconData iconData, LinearGradient gradient,BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.width * 0.3,
    width: MediaQuery.of(context).size.width * 0.26,
    margin: const EdgeInsets.all(4),
    padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      boxShadow: const [
        BoxShadow(
          color: Colors.black12,
          spreadRadius: 2,
          blurRadius: 2,
        ),
      ],
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(18),
          decoration: BoxDecoration(
            gradient: gradient,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Icon(iconData, size: 24, color: Colors.white),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
          textAlign: TextAlign.center,
        )
      ],
    ),
  );
}