import 'package:flutter/material.dart';
import './signin_task4.dart';

class signup_task4 extends StatefulWidget {
  const signup_task4({Key? key}) : super(key: key);

  @override
  State<signup_task4> createState() => _signup_task4State();
}

class _signup_task4State extends State<signup_task4> {
  bool ischecked = false;
  bool ischeck = false;
  bool isobscure = false;
  bool _isobscure = false;
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> States) {
      Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.focused,
        MaterialState.pressed,
        MaterialState.hovered,
      };
      if (States.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Color.fromRGBO(203, 204, 208, 6);
    }

    ;

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
                        height: 100.0,
                      ),
                      Text(
                        'Sign up to chat',
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
                        width: 325.14,
                        height: 52.82,
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
                        height: 10.0,
                      ),
                      SizedBox(
                        width: 325.14,
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
                        height: 20.0,
                      ),
                      SizedBox(
                        width: 325.14,
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
                            hintText: 'Confirm Password',
                            hintStyle: TextStyle(
                              fontSize: 16.0,
                              fontFamily: 'SFProText-Regular',
                              color: Color.fromRGBO(26, 26, 26, 7050),
                            ),
                            suffixIcon: IconButton(
                              color: Color.fromRGBO(26, 26, 26, 200),
                              onPressed: () {
                                setState(() {
                                  _isobscure = !_isobscure;
                                });
                              },
                              icon: Icon(_isobscure
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                            ),
                          ),
                          obscureText: !_isobscure,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        children: [
                          Transform.scale(
                            scale: 1.2,
                            child: Checkbox(
                              side: BorderSide(
                                color: Color.fromRGBO(26, 26, 26, 200),
                              ),
                              checkColor: Colors.white,
                              fillColor:
                                  MaterialStateProperty.resolveWith(getColor),
                              value: ischecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  ischecked = value!;
                                });
                              },
                            ),
                          ),
                          Text(
                            'Yes, I want to receive promotional emails',
                            style: TextStyle(
                              fontFamily: 'SFProText-Regular',
                              fontSize: 13.0,
                              color: Color.fromRGBO(26, 26, 26, 6),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Transform.scale(
                            scale: 1.2,
                            child: Checkbox(
                              side: BorderSide(
                                color: Color.fromRGBO(26, 26, 26, 200),
                              ),
                              checkColor: Colors.white,
                              fillColor:
                                  MaterialStateProperty.resolveWith(getColor),
                              value: ischeck,
                              onChanged: (bool? value) {
                                setState(() {
                                  ischeck = value!;
                                });
                              },
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 16.0,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'I agree with the ',
                                    style: TextStyle(
                                      fontFamily: 'SFProText-Regular',
                                      fontSize: 13.0,
                                      color: Color.fromRGBO(26, 26, 26, 6),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Text(
                                      'Terms and Condition',
                                      style: TextStyle(
                                        fontFamily: 'SFProText-Regular',
                                        fontSize: 13.0,
                                        color: Color.fromRGBO(68, 166, 255, 6),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 3.0,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'and the ',
                                    style: TextStyle(
                                      fontFamily: 'SFProText-Regular',
                                      fontSize: 13.0,
                                      color: Color.fromRGBO(26, 26, 26, 6),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Text(
                                      'Privacy Policy',
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
                      SizedBox(
                        height: 43.0,
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
                        height: 30.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Already have an account?',
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
                                      builder: (context) => signin_task4()));
                            },
                            child: Text(
                              'Sign in here',
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
