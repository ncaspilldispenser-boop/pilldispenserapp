import 'package:flutter/material.dart';


class viewpatientscreen extends StatelessWidget {
  const viewpatientscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  title:Text('viewpatient'),
   backgroundColor:Colors.grey,
        centerTitle: true,

),
body: ListView.builder(
  itemCount: 5,
  itemBuilder: (context, index) {
  return Card(child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('mhd', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        Text('male'),
        Text('9876543210'),
        Text('mhd@gmail.com'),
        Text('qwertyuio'),
      ],
    ),
  ),);
},),

);}}