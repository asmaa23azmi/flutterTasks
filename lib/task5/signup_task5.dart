import 'package:flutter/material.dart';
import './signin_task5.dart';
import './travel_page.dart';

class signup_task5 extends StatefulWidget {
  const signup_task5({Key? key}) : super(key: key);

  @override
  State<signup_task5> createState() => _signup_task5State();
}

class _signup_task5State extends State<signup_task5> {
  final _formkey = GlobalKey<FormState>();

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
          child: Form(
            key: _formkey,
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 25.0, vertical: 0.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 150.0,
                      ),
                      Text(
                        'Create Your Account',
                        style: TextStyle(
                          fontFamily: 'Roboto Regular',
                          fontSize: 30.0,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      SizedBox(
                        width: 355.0,
                        height: 56.0,
                        child: TextFormField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color.fromRGBO(245, 245, 245, 5),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(28.0),
                              borderSide: BorderSide(
                                color: Color.fromRGBO(245, 245, 245, 5),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(28.0),
                              borderSide: BorderSide(
                                color: Color.fromRGBO(245, 245, 245, 5),
                              ),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(28.0),
                              borderSide: BorderSide(
                                color: Color.fromRGBO(245, 245, 245, 5),
                              ),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(28.0),
                              borderSide: BorderSide(
                                color: Color.fromRGBO(245, 245, 245, 5),
                              ),
                            ),
                            hintText: 'Name',
                            hintStyle: TextStyle(
                                fontFamily: 'OpenSans-Regular',
                                fontSize: 15.0,
                                color: Color.fromRGBO(36, 37, 61, 3030)),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(
                        height: 25.0,
                      ),
                      SizedBox(
                        width: 355.0,
                        height: 56.0,
                        child: TextFormField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color.fromRGBO(245, 245, 245, 5),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(28.0),
                              borderSide: BorderSide(
                                color: Color.fromRGBO(245, 245, 245, 5),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(28.0),
                              borderSide: BorderSide(
                                color: Color.fromRGBO(245, 245, 245, 5),
                              ),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(28.0),
                              borderSide: BorderSide(
                                color: Color.fromRGBO(245, 245, 245, 5),
                              ),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(28.0),
                              borderSide: BorderSide(
                                color: Color.fromRGBO(245, 245, 245, 5),
                              ),
                            ),
                            hintText: 'Email Address',
                            hintStyle: TextStyle(
                                fontFamily: 'OpenSans-Regular',
                                fontSize: 15.0,
                                color: Color.fromRGBO(36, 37, 61, 3030)),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            } else if (!value.contains('@')) {
                              return 'must contain @';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(
                        height: 25.0,
                      ),
                      SizedBox(
                        width: 355.0,
                        height: 56.0,
                        child: TextFormField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color.fromRGBO(245, 245, 245, 5),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(28.0),
                              borderSide: BorderSide(
                                color: Color.fromRGBO(245, 245, 245, 5),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(28.0),
                              borderSide: BorderSide(
                                color: Color.fromRGBO(245, 245, 245, 5),
                              ),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(28.0),
                              borderSide: BorderSide(
                                color: Color.fromRGBO(245, 245, 245, 5),
                              ),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(28.0),
                              borderSide: BorderSide(
                                color: Color.fromRGBO(245, 245, 245, 5),
                              ),
                            ),
                            hintText: 'password',
                            hintStyle: TextStyle(
                                fontFamily: 'OpenSans-Regular',
                                fontSize: 15.0,
                                color: Color.fromRGBO(36, 37, 61, 3030)),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            } else if (value.length <= 7) {
                              return 'Please enter at least 8 character';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(
                        height: 25.0,
                      ),
                      SizedBox(
                        width: 355.0,
                        height: 56.0,
                        child: Material(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(27.0),
                          ),
                          shadowColor: Color.fromRGBO(68, 199, 179, 6),
                          elevation: 7.0,
                          clipBehavior: Clip.antiAlias,
                          child: MaterialButton(
                            onPressed: () {
                              if (_formkey.currentState!.validate()) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => travel_page()));
                              }
                              ;
                            },
                            child: Text(
                              'SIGN UP',
                              style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Roboto Regular',
                                  color: Colors.white),
                            ),
                            color: Color.fromRGBO(68, 199, 179, 10),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Already have an account?',
                            style: TextStyle(
                              fontFamily: 'Roboto Regular',
                              fontSize: 13.0,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => signin_task5()));
                            },
                            child: Text(
                              'SIGN IN',
                              style: TextStyle(
                                fontFamily: 'Roboto Regular',
                                fontWeight: FontWeight.bold,
                                fontSize: 13.0,
                                color: Color.fromRGBO(68, 199, 179, 10),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
