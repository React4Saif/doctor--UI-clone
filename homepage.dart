// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespac

import 'package:doctor_ui_clone/utils/category.dart';
import 'package:doctor_ui_clone/utils/doctor.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
        
        children: [
        
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:28.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello", style: TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold,
                      ),
                    ),
                     Text(
                      "Saif Ali",style: TextStyle(
                        fontSize: 25,fontWeight: FontWeight.bold,),
                    )
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.deepPurple[300]
                  ),
                  child: Icon(Icons.person, size: 25,
                      ),
                )
              ],
            ),
          ),
          SizedBox(height: 20,),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal:28.0),
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.pink[200]
            ),
          child:  Row(children: [
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(12,)
                , color: Colors.pink[300]),
                  height: 100,
                  width: 100,
                 child: Image.asset('img/Saif.jpg', fit: BoxFit.cover,),
              ),
              SizedBox(width: 20,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("How do you feel", style: TextStyle(fontSize: 23, fontWeight: 
                    FontWeight.bold),),
                    SizedBox(height: 10,),
                    Text("Fiil out your medical card right now", 
                    style: TextStyle(fontSize: 16),),
                    SizedBox(height: 20,),
                    Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple[300],
                        borderRadius: BorderRadius.circular(8)),
                      child:Center(child: 
                      Text("Get Started", 
                      style: TextStyle(color: Colors.white,fontSize: 16),                      
                      ),
                      ),
                    ),
                  ],
                  
                ),
              ),
            ],
            ),
          ),
        ),
 SizedBox(height: 20,),
 
    Padding(
      padding: const EdgeInsets.symmetric(horizontal:28.0),
      child: Container(
        decoration: BoxDecoration(color: Colors.deepPurple[100],
        borderRadius: BorderRadius.circular(8)),
        child: TextField(
          
          decoration: InputDecoration(border: InputBorder.none,
          prefixIcon: Icon(Icons.search,size: 30,),
          hintText: "How can we help you?", ),
        ),
      ),
    ),
          SizedBox(height: 20,),
          Container(
                height: 60,
             child:ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CategoryCard(iconimg: 'img/tooth.png', icontext: 'Tooth',),
                CategoryCard(iconimg: 'img/surgeon.png', icontext: 'Surgeon',),
                CategoryCard(iconimg: 'img/medicine.png', icontext: 'Medicine',),
                ],)
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:28.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Doctor List", style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                ),),
                Text("See all", style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey
                ),),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Expanded(child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                DoctorsList(name: "Dr. Sania Ali", rating: '   4.9', passion: 'Child Specialist', imgPath: 'img/doct1.jpg'),
                DoctorsList(name: "Dr. Hania Ali", rating: '  4.4', passion: 'Heart Specialist', imgPath: 'img/doct2.jpg'),
                DoctorsList(name: "Dr. Safdar Ali", rating: '  4.8', passion: 'Eye Specialist', imgPath: 'img/doct3.jpg')

              ],
            ),
          ) )
        ],
      ),
      ),
    );
  }
}