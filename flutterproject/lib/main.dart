
import 'package:flutter/material.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Date Set Go'),
      ),
      body: Column(
        children: [
          Image.asset('assets/Date.jpg'),
          SizedBox(height: 150,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Enter your details'),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            TextField(
                              decoration: InputDecoration(
                                labelText: 'Full Name',
                              ),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                labelText: 'Mobile Number',
                              ),
                              keyboardType: TextInputType.phone,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                labelText: 'Email Address',
                              ),
                              keyboardType: TextInputType.emailAddress,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                labelText: 'Date of Birth',
                              ),
                              keyboardType: TextInputType.datetime,
                            ),
                          ],
                        ),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('Cancel'),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(minimumSize: Size(200, 30)),
                            onPressed: () {
                              // Do something with the user input
                              Navigator.of(context).pop();
                            },
                            child: Text('Submit'),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text('Sign Up'),
              ),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Enter phone number and password'),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[

                            TextField(
                              decoration: InputDecoration(
                                labelText: 'Phone number',
                                
                          
                              ),
                            ),

                            TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                labelText: 'Password',
                              ),
                            ),
                            TextButton(

                              child: Text("Forget Password"),
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: Text('Reset Password'),
                                      content: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          TextField(
                                            decoration: InputDecoration(
                                              labelText: 'Phone number',
                                            ),
                                          ),
                                          TextField(
                                            obscureText: true,
                                            decoration: InputDecoration(
                                              labelText: 'New Password',
                                            ),
                                          ),
                                        ],
                                      ),
                                      actions: <Widget>[
                                        TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: Text('Cancel'),
                                        ),
                                        ElevatedButton(
                                          onPressed: () {
                                            // Do something to reset the password
                                            Navigator.of(context).pop();
                                          },
                                          child: Text('Submit'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                            ),

                          Row(
                            children: [
                           ElevatedButton(
                            onPressed: () {
                              // Do something when the Submit button is pressed
                              print('Submit button pressed');
                            },
                            child: Text('Submit'),
                          ),
                        TextButton(
                          onPressed: () {
                            // Do something when the Cancel button is pressed
                            Navigator.of(context).pop();
                          },
                          child: Text('Cancel'),
                        ),
                          ],
                          )

                            ],
                            ),
                            );},);},
                            child: Text("Login"),
                            ),
                            
            ],),
        ],),);}
                      
}