import 'package:flutter/material.dart';

class signup_task3 extends StatefulWidget {
  const signup_task3({Key? key}) : super(key: key);

  @override
  State<signup_task3> createState() => _signup_task3State();
}

class _signup_task3State extends State<signup_task3> {
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
                      horizontal: 30.0, vertical: 160.0),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Get it Done',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 35.0,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(70, 224, 60, 30)),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Sign in or Create an account',
                          style: TextStyle(
                              fontFamily: 'Poppins-Regular',
                              fontSize: 16.0,
                              color: Color.fromRGBO(26, 26, 26, 5050)),
                        ),
                      ),
                      SizedBox(
                        height: 23.0,
                      ),
                      SizedBox(
                        width: 350.0,
                        height: 52.0,
                        child: TextFormField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color.fromRGBO(247, 247, 247, 3),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(28.0),
                              borderSide: BorderSide(
                                color: Color.fromRGBO(70, 244, 60, 5),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(28.0),
                              borderSide: BorderSide(
                                color: Color.fromRGBO(70, 244, 60, 5),
                              ),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(28.0),
                              borderSide: BorderSide(
                                color: Color.fromRGBO(70, 244, 60, 5),
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(28.0),
                              borderSide: BorderSide(
                                color: Color.fromRGBO(70, 244, 60, 5),
                              ),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(28.0),
                              borderSide: BorderSide(
                                color: Color.fromRGBO(70, 244, 60, 5),
                              ),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(28.0),
                              borderSide: BorderSide(
                                color: Color.fromRGBO(70, 244, 60, 5),
                              ),
                            ),
                            hintText: 'Email Address',
                            hintStyle: TextStyle(
                                fontFamily: 'Poppins-Regular',
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
                        height: 23.0,
                      ),
                      SizedBox(
                        width: 350.0,
                        height: 52.0,
                        child: Material(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(27.0),
                          ),
                          clipBehavior: Clip.antiAlias,
                          child: MaterialButton(
                            onPressed: () {
                              if (_formkey.currentState!.validate()) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(content: Text('data')),
                                );
                              }
                              ;
                            },
                            child: Text(
                              'Continue',
                              style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins',
                                  color: Colors.white),
                            ),
                            color: Color.fromRGBO(70, 224, 60, 30),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      Text(
                        'or',
                        style: TextStyle(
                            fontFamily: 'Poppins-Regular',
                            fontSize: 16.0,
                            color: Color.fromRGBO(26, 26, 26, 5050)),
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      SizedBox(
                        width: 350.0,
                        height: 52.0,
                        child: Material(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(27.0),
                          ),
                          clipBehavior: Clip.antiAlias,
                          child: MaterialButton(
                            onPressed: () {},
                            child: Text(
                              'Continue with Facebook',
                              style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins',
                                  color: Colors.white),
                            ),
                            color: Color.fromRGBO(83, 123, 208, 5),
                          ),
                        ),
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
