import 'package:flutter/material.dart';
import './signup_task5.dart';
import './signin_task5.dart';

class welcome_task5 extends StatefulWidget {
  const welcome_task5({Key? key}) : super(key: key);

  @override
  State<welcome_task5> createState() => _welcome_task5State();
}

class _welcome_task5State extends State<welcome_task5> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/background05.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/recTask5.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 200.0),
                      child: Column(
                        children: [
                          Text(
                            'Explore the',
                            style: TextStyle(
                              fontFamily: 'OpenSans-Bold',
                              fontSize: 50.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'world',
                            style: TextStyle(
                                fontFamily: 'OpenSans-Bold',
                                fontSize: 50.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 330.0,
                          ),
                          SizedBox(
                            width: 355.0,
                            height: 56.0,
                            child: Material(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(27.0),
                              ),
                              clipBehavior: Clip.antiAlias,
                              child: MaterialButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              signin_task5()));
                                },
                                child: Text(
                                  'SIGN IN',
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontFamily: 'Roboto Regular',
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30.0,
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
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              signup_task5()));
                                },
                                child: Text(
                                  'SIGN UP',
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontFamily: 'Roboto Regular',
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                color: Color.fromRGBO(68, 199, 179, 6),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
