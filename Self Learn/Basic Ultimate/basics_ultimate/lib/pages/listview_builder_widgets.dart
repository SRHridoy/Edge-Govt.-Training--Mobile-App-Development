// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ListviewBuilderWidgets extends StatelessWidget {
  ListviewBuilderWidgets({super.key});

  final List<String> islamicFullNames = [
    "Aisha Siddiqui",
    "Ali Hassan",
    "Amira Khalil",
    "Anas Farooq",
    "Asma Bint Ahmad",
    "Bilal Tariq",
    "Dania Noor",
    "Ehsan Qasim",
    "Farah Naeem",
    "Fatima Zahra",
    "Hamza Saeed",
    "Hassan Raza",
    "Huda Kareem",
    "Imran Malik",
    "Iqra Saleem",
    "Isa Suleiman",
    "Jamil Nasir",
    "Jannat Fatima",
    "Khadijah Omar",
    "Khalid Mahmood",
    "Layla Nadeem",
    "Lina Yusuf",
    "Mariam Hassan",
    "Maryam Ibrahim",
    "Musa Nasser",
    "Nadia Shakir",
    "Naseem Yasin",
    "Nawal Shah",
    "Noor Amina",
    "Omar Abdullah"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text(
          'ListView Builder',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: islamicFullNames.length,
        itemExtent: 100,
        itemBuilder: (context, index) => ListTile(
          title: Text(islamicFullNames[index],style: TextStyle(backgroundColor: Colors.yellow),),
        ),
      ),
    );
  }
}
