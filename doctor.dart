// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';


class DoctorsList extends StatelessWidget {
  final String name;
  final String rating;
  final String passion;
  final String imgPath;
  const DoctorsList({Key? key, required this.name, required this.rating, required this.passion, required this.imgPath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25),
      
      child: Container(
        padding:  EdgeInsets.all(20),
        decoration: BoxDecoration(
              color: Colors.deepPurple[100],
              borderRadius: BorderRadius.circular(12)
        ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(imgPath,
                    height: 80,),
                  ),
SizedBox(height: 5,),
                  // ignore: prefer_const_literals_to_create_immutables
                  Row(children: [
                  Container
                  (color: Colors.red,
                    child: Icon(  Icons.star, color: Colors.yellow,)),
                  Text(  rating)
                ],),
                SizedBox(height: 5,),
                Text(name, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
SizedBox(height: 5,),
                Text(passion)
                ],
                
              ),
            ),
    );
  }
}