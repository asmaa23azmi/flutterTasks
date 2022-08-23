import 'package:flutter/material.dart';
import './sinup_task4.dart';

class signin_task4 extends StatefulWidget {
  const signin_task4({Key? key}) : super(key: key);

  @override
  State<signin_task4> createState() => _signin_task4State();
}

class _signin_task4State extends State<signin_task4> {
  bool isobscure = false;
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
              Column(
                children: [
                  SizedBox(
                    height: 150.0,
                  ),
                  Text(
                    'Sign in to chat',
                    style: TextStyle(
                      fontFamily: 'SFProText-Bold-1',
                      fontSize: 29.0,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 24.0,
                  ),
                  Text(
                    'Remember to get up & stretch once,',
                    style: TextStyle(
                      fontFamily: 'SFProText-Regular',
                      fontSize: 14.0,
                    ),
                  ),
                  Text(
                    'in a while - your friends at chat.',
                    style: TextStyle(
                      fontFamily: 'SFProText-Regular',
                      fontSize: 14.0,
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  SizedBox(
                    width: 315.14,
                    height: 62.82,
                    child: TextFormField(
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(26, 26, 26, 200),
                          ),
                        ),
                        prefixIcon: Icon(Icons.person_outline),
                        // hoverColor: Color.fromRGBO(68, 166, 255, 6),
                        labelText: 'Email',
                        labelStyle: TextStyle(
                            fontSize: 12.0,
                            fontFamily: 'SFProText-Regular',
                            color: Color.fromRGBO(26, 26, 26, 7050)),
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
                    width: 315.14,
                    height: 62.82,
                    child: TextFormField(
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(26, 26, 26, 200),
                          ),
                        ),
                        prefixIcon: Icon(Icons.lock_open),
                        // hoverColor: Color.fromRGBO(68, 166, 255, 6),
                        labelText: 'Password',
                        labelStyle: TextStyle(
                            fontSize: 12.0,
                            fontFamily: 'SFProText-Regular',
                            color: Color.fromRGBO(26, 26, 26, 7050)),
                        suffixIcon: IconButton(
                          color: Color.fromRGBO(26, 26, 26, 200),
                          onPressed: () {
                            setState(() {
                              isobscure = !isobscure;
                            });
                          },
                          icon: Icon(isobscure
                              ? Icons.visibility
                              : Icons.visibility_off),
                        ),
                      ),
                      obscureText: !isobscure,
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
                    height: 40.0,
                  ),
                  SizedBox(
                    width: 213.66,
                    height: 53.41,
                    child: Material(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                      shadowColor: Color.fromRGBO(68, 166, 255, 6),
                      elevation: 4.0,
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
                          'sign up',
                          style: TextStyle(
                            fontSize: 17.0,
                            fontFamily: 'SFProText-Semibold',
                            color: Colors.white,
                          ),
                        ),
                        color: Color.fromRGBO(68, 166, 255, 6),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot your password?',
                      style: TextStyle(
                        fontFamily: 'OpenSans-Regular',
                        fontSize: 13.0,
                        color: Color.fromRGBO(68, 166, 255, 6),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 70.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Do not have an account?',
                        style: TextStyle(
                          fontFamily: 'SFProText-Regular',
                          fontSize: 13.0,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => signup_task4()));
                        },
                        child: Text(
                          'Sign up here',
                          style: TextStyle(
                            fontFamily: 'SFProText-Regular',
                            fontSize: 13.0,
                            color: Color.fromRGBO(68, 166, 255, 6),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        )),
      ),
    );
  }
}
