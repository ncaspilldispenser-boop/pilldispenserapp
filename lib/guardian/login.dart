import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
        backgroundColor: const Color.fromARGB(66, 198, 189, 189),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
         
          children: [
            
            SizedBox(height: 100,),
            Text('Please login to continue!', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            SizedBox(height: 50,),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))),
            ),
            SizedBox(height: 20,),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'password',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent,foregroundColor: Colors.black ),
              onPressed: (){}, child: Text('login')),
              SizedBox(height: 20,),
              TextButton(onPressed: (){}, child: Text('Dont\'t have an account! Signup ' ))
        
          ],
        ),
      ),
    );
  }
}
