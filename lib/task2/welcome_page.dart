import 'package:flutter/material.dart';
import './log_in.dart';

class welcome_page extends StatelessWidget {
  const welcome_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('images/welcomePage.png'),
              fit: BoxFit.cover,
            )),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 0.0, horizontal: 25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Excited?!',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40.0,
                        fontFamily: 'Quicksand Bold',
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 35.0,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'You should be!!',
                      style: TextStyle(
                        fontFamily: 'Quicksand Bold',
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 35.0,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Sign In if you already have an account with us',
                      style: TextStyle(
                        fontFamily: 'Quicksand',
                        color: Colors.white,
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 60.0,
                    child: Material(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      clipBehavior: Clip.antiAlias,
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const log_in()));
                        },
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Quicksand Bold',
                            color: Colors.black,
                          ),
                        ),
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Or sign up if you are new !',
                      style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 14.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 60.0,
                    child: Material(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      clipBehavior: Clip.antiAlias,
                      child: MaterialButton(
                        onPressed: () {},
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            fontFamily: 'Quicksand Bold',
                            fontSize: 20.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
