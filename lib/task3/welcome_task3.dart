import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import './login_task3.dart';
import './signup_task3.dart';

class welcome_task3 extends StatefulWidget {
  const welcome_task3({Key? key}) : super(key: key);

  @override
  State<welcome_task3> createState() => _welcome_task3State();
}

class _welcome_task3State extends State<welcome_task3> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 0.0, horizontal: 25.0),
            child: Column(
              children: [
                SizedBox(
                  height: 170.0,
                ),
                Image(
                  image: AssetImage('images/Out line.png'),
                  width: 153.73,
                  height: 153.73,
                ),
                SizedBox(
                  width: 280.0,
                  child: Divider(
                    color: Colors.white,
                    height: 70.0,
                  ),
                ),
                Text(
                  'Log in or create an account to keep your',
                  style: TextStyle(
                    fontFamily: 'OpenSans-Regular',
                    fontSize: 12.0,
                    color: Colors.white,
                  ),
                ),
                Text(
                  ' subcsciption in sync',
                  style: TextStyle(
                    fontFamily: 'OpenSans-Regular',
                    fontSize: 12.0,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 44.0,
                  child: Material(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9.0),
                      side: BorderSide(color: Colors.white),
                    ),
                    clipBehavior: Clip.antiAlias,
                    color: Color.fromRGBO(255, 255, 255, 230),
                    child: MaterialButton(
                      onPressed: () {},
                      child: Text(
                        'Login with Facebook',
                        style: TextStyle(
                          fontFamily: 'OpenSans-Regular',
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      //  color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 44.0,
                      width: 169.0,
                      child: Material(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(9.0)),
                        clipBehavior: Clip.antiAlias,
                        color: Color.fromRGBO(255, 255, 255, 230),
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const signup_task3()));
                          },
                          child: Text(
                            'Signup',
                            style: TextStyle(
                              fontFamily: 'OpenSans-Regular',
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                        child: SizedBox(
                      width: double.infinity,
                    )),
                    SizedBox(
                      height: 44.0,
                      width: 169.0,
                      child: Material(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(9.0)),
                        clipBehavior: Clip.antiAlias,
                        color: Color.fromRGBO(255, 255, 255, 230),
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const login_task3()));
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(
                              fontFamily: 'OpenSans-Regular',
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 215.0,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 44.0,
                  child: Material(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9.0),
                    ),
                    clipBehavior: Clip.antiAlias,
                    color: Color.fromRGBO(255, 255, 255, 230),
                    child: MaterialButton(
                      onPressed: () {},
                      child: Text(
                        'Later',
                        style: TextStyle(
                          fontFamily: 'OpenSans-Regular',
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      //  color: Colors.black,
                    ),
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
