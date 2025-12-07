import 'package:flutter/material.dart';

class ViewPatientScreen extends StatelessWidget {
  const ViewPatientScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'View Patients',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12.0),
        itemCount: 5, // replace with your dynamic list length
        itemBuilder: (context, index) {
          return Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.teal.shade300,
                child: const Icon(Icons.person, color: Colors.white),
              ),
              title: const Text(
                'Mhd',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SizedBox(height: 4),
                  Text('Gender: Male'),
                  Text('Phone: 9876543210'),
                  Text('Email: mhd@gmail.com'),
                  Text('Address: qwertyuio'),
                ],
              ),
              trailing: IconButton(
                icon: const Icon(Icons.arrow_forward_ios, color: Colors.grey),
                onPressed: () {
                  // Navigate to detailed view if needed
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
