
// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final iconimg;
  final String icontext;
  const CategoryCard({Key? key, 
  required this.iconimg,
  required this.icontext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(left:28.0),
    child: Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.deepPurple[200],
        borderRadius: BorderRadius.circular(8)
      ),
        child: Row(
          children: [
            Image.asset(
              iconimg,
              height: 30,
            ),
            SizedBox(width: 10,),
            Text(icontext, style: TextStyle(fontSize: 20),),
          ],
        ),
    ),
  );
  }
}