import 'package:flutter/material.dart';

class Viewhealthcondition extends StatelessWidget {
  const Viewhealthcondition({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'View health condition',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ListTile(
              tileColor: const Color.fromARGB(255, 202, 188, 188),
              shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(12)),
              title: Text('Temperature', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.teal),),
              subtitle: Text('35.0'),
            ),SizedBox(height: 10,),
           ListTile(
              tileColor: const Color.fromARGB(255, 202, 188, 188),
              shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(12)),
              title: Text('Blood Pressure', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.teal),),
              subtitle: Text(''),
            ),SizedBox(height: 10,),

            ListTile(
              tileColor: const Color.fromARGB(255, 202, 188, 188),
              shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(12)),
              title: Text('', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.teal),),
              subtitle: Text(''),
            ),
            SizedBox(height: 10,),
            ListTile(
              tileColor: const Color.fromARGB(255, 202, 188, 188),
              shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(12)),
              title: Text('', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.teal),),
              subtitle: Text(''),
            ),

          ],
        ),
      )
      
      // ListView.builder(
      //   padding: const EdgeInsets.all(12.0),
      //   itemCount: 5, // replace with your dynamic list length
      //   itemBuilder: (context, index) {
      //     return Card(
      //       elevation: 4,
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(12),
      //       ),
      //       margin: const EdgeInsets.symmetric(vertical: 8),
      //       child: ListTile(
      //         leading: CircleAvatar(
      //           backgroundColor: Colors.teal.shade300,
      //           child: const Icon(Icons.person, color: Colors.white),
      //         ),
      //         title: const Text(
      //           '',
      //           style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      //         ),
      //         subtitle: Column(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: const [
      //             SizedBox(height: 4),
      //             Text('temp:32'),
      //             Text('blood pressure'),
      //             Text('so2'),
      //             Text(''),
      //           ],
      //         ),
      //         trailing: IconButton(
      //           icon: const Icon(Icons.arrow_forward_ios, color: Colors.grey),
      //           onPressed: () {
      //             // Navigate to detailed view if needed
      //           },
      //         ),
      //       ),
      //     );
      //   },
      // ),
    );
  }
}
