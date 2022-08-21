import 'package:flutter/material.dart';
import './signup_task3.dart';

class login_task3 extends StatefulWidget {
  const login_task3({Key? key}) : super(key: key);

  @override
  State<login_task3> createState() => _login_task3State();
}

class _login_task3State extends State<login_task3> {
  bool isobscure = true;
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
                      horizontal: 23.0, vertical: 20.0),
                  child: Column(
                    children: <Widget>[
                      const Image(
                        image: AssetImage('images/vk.png'),
                        width: 131.0,
                        height: 131.0,
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        'Welcome',
                        style: TextStyle(
                          fontSize: 38.0,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Login',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue[900],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 150.0,
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => signup_task3()));
                            },
                            child: Text(
                              'Signup',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      SizedBox(
                        width: 355.0,
                        height: 56.0,
                        child: Material(
                          shadowColor: Color.fromRGBO(255, 255, 255, 10),
                          elevation: 4.0,
                          borderRadius: BorderRadius.circular(5.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color.fromRGBO(255, 255, 255, 5),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                              hintText: 'Email Address',
                              hintStyle: TextStyle(
                                  fontFamily: 'Poppins-Regular',
                                  fontSize: 14.0,
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
                      ),
                      SizedBox(
                        height: 23.0,
                      ),
                      SizedBox(
                        width: 355.0,
                        height: 56.0,
                        child: Material(
                          shadowColor: Color.fromRGBO(255, 255, 255, 10),
                          elevation: 4.0,
                          borderRadius: BorderRadius.circular(5.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color.fromRGBO(255, 255, 255, 5),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                              hintText: 'Password',
                              hintStyle: TextStyle(
                                  fontFamily: 'Poppins-Regular',
                                  fontSize: 14.0,
                                  color: Color.fromRGBO(36, 37, 61, 3030)),
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
                            obscureText: isobscure,
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
                      ),
                      SizedBox(
                        height: 23.0,
                      ),
                      SizedBox(
                        width: 355.0,
                        height: 56.0,
                        child: Material(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
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
                              'LOGIN',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontFamily: 'Poppins-Regular',
                                color: Colors.white,
                              ),
                            ),
                            color: Color.fromRGBO(31, 84, 195, 6),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 27.0,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Forgot your password?',
                            style: TextStyle(
                              fontFamily: 'Poppins-Regular',
                              fontSize: 14.0,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 63.0,
                      ),
                      SizedBox(
                        width: 355.0,
                        child: Divider(
                          height: 5.0,
                          color: Color.fromRGBO(26, 26, 26, 200),
                        ),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              'images/facebook.png',
                              width: 20.0,
                              height: 75.25,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              'images/twitter.png',
                              width: 20.0,
                              height: 75.25,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              'images/instagram.png',
                              width: 20.0,
                              height: 75.25,
                            ),
                          ),
                          // IconButton(
                          //   icon: Container(
                          //     foregroundDecoration: BoxDecoration(
                          //         gradient: LinearGradient(
                          //           colors: [
                          //             Color.fromRGBO(29, 85, 197, 3),
                          //             Color.fromRGBO(233, 51, 84, 3)
                          //           ],
                          //           begin: Alignment(0, 1),
                          //           end: Alignment(0, 0),
                          //         ),
                          //         backgroundBlendMode: BlendMode.screen),
                          //     child: Image.asset(
                          //       'images/facebook.png',
                          //       width: 20.0,
                          //       height: 75.25,
                          //     ),
                          //   ),
                          //   onPressed: () {},
                          // ),
                          // IconButton(
                          //   icon: Container(
                          //     foregroundDecoration: BoxDecoration(
                          //         gradient: LinearGradient(
                          //           colors: [
                          //             Color.fromRGBO(29, 85, 197, 3),
                          //             Color.fromRGBO(233, 51, 84, 3)
                          //           ],
                          //           begin: Alignment(0, 1),
                          //           end: Alignment(0, 0),
                          //         ),
                          //         backgroundBlendMode: BlendMode.screen),
                          //     child: Image.asset(
                          //       'images/twitter.png',
                          //       width: 20.0,
                          //       height: 75.25,
                          //     ),
                          //   ),
                          //   onPressed: () {},
                          // ),
                          // IconButton(
                          //   icon: Container(
                          //     width: 20.0,
                          //     height: 75.0,
                          //     foregroundDecoration: BoxDecoration(
                          //         gradient: LinearGradient(
                          //           colors: [
                          //             Color.fromRGBO(29, 85, 197, 3),
                          //             Color.fromRGBO(233, 51, 84, 3)
                          //           ],
                          //           begin: Alignment(0, 1),
                          //           end: Alignment(0, 0),
                          //         ),
                          //         backgroundBlendMode: BlendMode.screen),
                          //     child: Image.asset(
                          //       'images/instagram.png',
                          //       width: 20.0,
                          //       height: 75.25,
                          //     ),
                          //   ),
                          //   onPressed: () {},
                          // ),
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
