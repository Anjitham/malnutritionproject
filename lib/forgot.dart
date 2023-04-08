import 'package:flutter/material.dart';

class Forgot extends StatelessWidget {
  Forgot({Key? key}) : super(key: key);


  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body:
         ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(fontSize: 20, fontStyle: FontStyle.normal),
                )),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.all(10),
              child: Text(
                'Enter Your Email',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: const Text('Check your mail'),
                  content: const Text(
                      'We have sent a password recover instructions to your email.'),
                  actions: <Widget>[
                    
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'OK'),
                      child: const Text('OK'),
                    ),
                  ],
                ),
              ),
              child: const Text('Submit'),
            ),
           


          ],
        ));
  }
}
