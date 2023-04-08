
import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  Signup({Key? key}) : super(key: key);
 
  TextEditingController nameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController guardiannameController = TextEditingController();

  TextEditingController phonenumberController = TextEditingController();

  TextEditingController relationshipController = TextEditingController();

  TextEditingController emailController = TextEditingController();

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
                  'Sign Up',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                      
                )),
            
            

            Container(
          padding: const EdgeInsets.all(10),
          child: TextFormField(
            controller: nameController,
            keyboardType: TextInputType.name,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter your child\'s name',
              labelText: 'Name',
            
            ),
            
            validator: (value) {
    if (value == null || value.isEmpty) {
      return 'This field is required.';
    }
    return null;
  },
          ),
        ),
           
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: guardiannameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Guardian  Name',
                   hintText: 'Enter Guardian Name',
                ),
              ),
            ),
             
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                keyboardType: TextInputType.number,
                maxLength: 10,
                controller: phonenumberController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Phone number',
                  hintText: 'Enter your phone number',
                ),
              ),
            ),
             
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: relationshipController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'RelationShip',
                   hintText: 'Enter Relationship with child',
                ),
              ),
            ),



            
             Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                   hintText: 'Enter your email',
                ),
              ),
            ),
 
            
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                   hintText: 'Enter your mail',
                ),
              ),
            ),
            
            Container(
                height: 60,
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: ElevatedButton(
                  child: const Text('Register'),
                  onPressed: () {
                    print(nameController.text);
                    print(passwordController.text);
                  },
                )
            ),
            Row(
              children: <Widget>[
                const Text('Do you have an account?'),
                TextButton(
                  child: const Text(
                    'Login',
                    style: TextStyle(fontSize: 30),
                  ),
                  onPressed: () {
                    //signup screen
                    Navigator.pop(context);
                  },
                )

              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ));
  }
}