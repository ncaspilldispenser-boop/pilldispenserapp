import 'package:flutter/material.dart';
import 'package:pilldispenserapp/guardian/login.dart';
import 'package:pilldispenserapp/guardian/register.dart';

class ComplaintScreen extends StatefulWidget {
  const ComplaintScreen({super.key});

  @override
  State<ComplaintScreen> createState() => _ComplaintScreenState();
}

class _ComplaintScreenState extends State<ComplaintScreen> {
  final TextEditingController _complaintController = TextEditingController();

Future<void>complaint(context) async {
  try {
    final response=await dio.post('$baseurl/ViewComplaintAPI/$lid/',data: {
      'complaint':_complaintController.text,
});print(response.data);
if (response.statusCode==200||response.statusCode==201){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('complaint submitted successfully')));
      _complaintController.clear();
   } 
   else{
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('complaint submitmission failed')));

   }
   }catch (e) {
    print(e);
    
  }
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text(
          'Submit Complaint',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.teal,
        centerTitle: true,
        elevation: 2,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Card(
            elevation: 6,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.report_problem_outlined,
                    size: 80,
                    color: Colors.teal,
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'We’re here to help!',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Please describe your complaint below. We’ll review it as soon as possible.',
                    style: TextStyle(color: Colors.black54, fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30),

                  // Complaint input
                  TextFormField(
                    controller: _complaintController,
                    maxLines: 6,
                    decoration: InputDecoration(
                      labelText: 'Your Complaint',
                      alignLabelWithHint: true,
                      prefixIcon: const Icon(Icons.edit_note_outlined),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),

                  // Submit Button
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.teal,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        elevation: 3,
                      ),
                      onPressed: () {
                       complaint(context);
                      },
                      icon: const Icon(Icons.send_outlined),
                      label: const Text(
                        'Submit Complaint',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
