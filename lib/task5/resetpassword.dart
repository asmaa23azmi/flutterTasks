import 'package:flutter/material.dart';

class resert_password extends StatefulWidget {
  const resert_password({Key? key}) : super(key: key);

  @override
  State<resert_password> createState() => _resert_passwordState();
}

class _resert_passwordState extends State<resert_password> {
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
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 0.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 150.0,
                  ),
                  Text(
                    'Reset Your Password',
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
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(28.0),
                          borderSide: BorderSide(
                            color: Color.fromRGBO(245, 245, 245, 5),
                          ),
                        ),
                        disabledBorder: OutlineInputBorder(
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
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('data')),
                            );
                          }
                          ;
                        },
                        child: Text(
                          'RESET YOUR PASSWORD',
                          style: TextStyle(
                              fontSize: 13.0,
                              fontFamily: 'Roboto Regular',
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        color: Color.fromRGBO(68, 199, 179, 10),
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
