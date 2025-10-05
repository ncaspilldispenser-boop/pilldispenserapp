import 'package:flutter/material.dart';

class patientscreen extends StatelessWidget {
  patientscreen({super.key});

  String? selectedgender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('add patient'),
        backgroundColor:Colors.grey,
        centerTitle: true,
      ),
body: Padding(
  padding: const EdgeInsets.all(8.0),
  child: Column(
    children: [
      SizedBox(height: 20,),
  TextFormField(
    decoration: InputDecoration(
      labelText: 'name',
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))),
    ),
  SizedBox(height: 20,),
  DropdownButtonFormField(
    decoration: InputDecoration(
      labelText: 'gender',
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))),
    initialValue: selectedgender,
    items: ['male','female','others'].map((e)=>DropdownMenuItem(value: e,child: Text(e),)).toList(), onChanged: (value){selectedgender=value!;}),
  SizedBox(height: 20,),
  
  TextFormField(
    decoration: InputDecoration(
      labelText: 'phone number',
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))),
    ),
     SizedBox(height: 20,),
  
  TextFormField(
    decoration: InputDecoration(
      labelText: 'email',
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))),
    ),
  SizedBox(height: 20,),
  
  TextFormField(
    decoration: InputDecoration(
      labelText: 'address',
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))),
    ),
    
  SizedBox(height: 20,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent,foregroundColor: Colors.black ),
                onPressed: (){}, child: Text('add')),
                SizedBox(height: 20,),
              
          
  
    ],
  ),
)

); 


    
  }
}