import 'package:flutter/material.dart';
import './welcome_page.dart';

class log_in extends StatelessWidget {
  const log_in({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0, //delete appBar border
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.black,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Welcome back!',
                style: TextStyle(
                  fontFamily: 'Quicksand Bold',
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Please login to your account.',
                style: TextStyle(
                  fontFamily: 'Quicksand',
                  fontSize: 20.0,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 25.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    //  border: underLineInputBorder(),
                    hintText: 'Email Address',
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 25.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Password',
                      ),
                    ),
                  ),
                  Positioned(
                    right: 15.0,
                    bottom: 5.0,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forget?',
                        style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
                  height: 60.0,
                  child: Center(
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                        fontFamily: 'Quicksand Bold',
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.purpleAccent[700],
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'REGISTER NOW',
                  style: TextStyle(
                    fontFamily: 'Quicksand Bold',
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
