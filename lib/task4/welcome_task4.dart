import 'package:flutter/material.dart';
import './sinup_task4.dart';
import './signin_task4.dart';

class welcome_task4 extends StatefulWidget {
  const welcome_task4({Key? key}) : super(key: key);

  @override
  State<welcome_task4> createState() => _welcome_task4State();
}

class _welcome_task4State extends State<welcome_task4> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 35.0, vertical: 0.0),
            child: ListView(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 130.0,
                    ),
                    Text(
                      'Welcome to APP',
                      style: TextStyle(
                        fontFamily: 'SFProText-Bold-1',
                        fontSize: 33.0,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 24.0,
                    ),
                    Text(
                      'Fewer meetings, less internal email,',
                      style: TextStyle(
                        fontFamily: 'SFProText-Regular',
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      'all your tools integrated.',
                      style: TextStyle(
                        fontFamily: 'SFProText-Regular',
                        fontSize: 16.0,
                      ),
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                    Image(
                      image: AssetImage('images/background4.png'),
                      width: 335.37,
                      height: 293.59,
                    ),
                    SizedBox(
                      height: 60.0,
                    ),
                    SizedBox(
                      width: 256.39,
                      height: 64.1,
                      child: Material(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                        shadowColor: Color.fromRGBO(68, 166, 255, 6),
                        elevation: 4.0,
                        clipBehavior: Clip.antiAlias,
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => signup_task4()));
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
                      height: 25.0,
                    ),
                    SizedBox(
                      width: 256.39,
                      height: 64.1,
                      child: Material(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                        shadowColor: Color.fromRGBO(255, 255, 255, 6),
                        elevation: 7.0,
                        clipBehavior: Clip.antiAlias,
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => signin_task4()));
                          },
                          child: Text(
                            'sign in',
                            style: TextStyle(
                              fontSize: 17.0,
                              fontFamily: 'SFProText-Semibold',
                              color: Colors.black,
                            ),
                          ),
                          color: Color.fromRGBO(255, 255, 255, 6),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
