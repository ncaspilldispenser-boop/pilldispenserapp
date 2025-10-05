import 'package:flutter/material.dart';

class complaintscreen extends StatelessWidget {
  const complaintscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  title: Text('complaint'),
        backgroundColor: const Color.fromARGB(66, 198, 189, 189),
        centerTitle: true,
      ),
body: Padding(
  padding: const EdgeInsets.all(8.0),
  child: Column(
  children: [
              TextFormField(maxLines: 5,
                decoration: InputDecoration(
                  labelText: 'complaint',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))
                ),
              ),
 SizedBox(height: 20,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent,foregroundColor: Colors.black ),
              onPressed: (){}, child: Text('submit')),

  ],
  
  ),
) ,

);

    
  }
}