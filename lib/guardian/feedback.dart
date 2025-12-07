import 'package:flutter/material.dart';
import 'package:pilldispenserapp/guardian/login.dart';
import 'package:pilldispenserapp/guardian/register.dart';

class FeedbackScreen extends StatefulWidget {
  const FeedbackScreen({super.key});


  @override
  State<FeedbackScreen> createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  final TextEditingController _feedbackController = TextEditingController();


Future<void>feedback(context) async {
  try {
    final response=await dio.post('$baseurl/ViewFeedbackAPI/$lid',data: {
      'feedback':_feedbackController.text,
});print(response.data);
if (response.statusCode==200||response.statusCode==201){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('feedback submitted successfully')));
      _feedbackController.clear();
   } 
   else{
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('feedback submitmission failed')));

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
          'Feedback',
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
                    Icons.feedback_outlined,
                    color: Colors.teal,
                    size: 80,
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'We value your feedback 💬',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Please share your thoughts or suggestions below:',
                    style: TextStyle(color: Colors.black54, fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30),

                  // Feedback input box
                  TextFormField(
                    controller: _feedbackController,
                    maxLines: 6,
                    decoration: InputDecoration(
                      labelText: 'Your Feedback',
                      alignLabelWithHint: true,
                      prefixIcon: const Icon(Icons.message_outlined),
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
                        feedback(context);
                      },
                      icon: const Icon(Icons.send_rounded),
                      label: const Text(
                        'Submit Feedback',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
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
