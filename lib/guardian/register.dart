import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pilldispenserapp/guardian/login.dart';

final Dio dio=Dio();

final baseurl='http://192.168.1.35:5000';

class registrationscreen extends StatefulWidget {
  registrationscreen({super.key});

  @override
  State<registrationscreen> createState() => _registrationscreenState();
}

class _registrationscreenState extends State<registrationscreen> {
  String? selectedgender;

TextEditingController name=TextEditingController();

TextEditingController phonenumber=TextEditingController();

TextEditingController email=TextEditingController();

TextEditingController address=TextEditingController();

TextEditingController username=TextEditingController();

TextEditingController password=TextEditingController();



Future<void>register(context) async {
  try {
    final response=await dio.post('$baseurl/userRegister_api',data: {
      'name':name.text,
      'phone':phonenumber.text,
      'email':email.text,
      'address':address.text,
      'gender':selectedgender,
      'username':username.text,
      'password':password.text,
    });
    if (response.statusCode==200||response.statusCode==201){
      Navigator.push(context, MaterialPageRoute(builder:(context) => LoginScreen(),));
    }
    
  } catch (e) {
    print(e);
    
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('register'),
        backgroundColor:Colors.teal,
        centerTitle: true,
      ),
body: Padding(
  padding: const EdgeInsets.all(8.0),
  child: SingleChildScrollView(
    child: Column(
      children: [
        SizedBox(height: 20,),
    TextFormField(
      controller: name,
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
      items: ['male','female','others'].map((e)=>DropdownMenuItem(value: e,child: Text(e),)).toList(), onChanged: (value){selectedgender=value;}),
    SizedBox(height: 20,),
    
    TextFormField(
      controller: phonenumber,
      decoration: InputDecoration(
        labelText: 'phone number',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))),
      ),
       SizedBox(height: 20,),
    
    TextFormField(
      controller: email,
      decoration: InputDecoration(
        labelText: 'email',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))),
      ),
    SizedBox(height: 20,),
    
    TextFormField(
      controller: address,
      decoration: InputDecoration(
        labelText: 'address',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))),
      ),
      SizedBox(height: 20,),
    
    TextFormField(
      controller: username,
      decoration: InputDecoration(
        labelText: 'username',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))),
      ),
      SizedBox(height: 20,),
    
    TextFormField(
      controller: password,
      decoration: InputDecoration(
        labelText: 'password',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))),
      ),
    SizedBox(height: 20,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent,foregroundColor: Colors.black ),
                  onPressed: (){
                    register(context);
                    }, child: Text('register')),
                  SizedBox(height: 20,),
                
            
    
      ],
    ),
  ),
)

); 


    
  }
}