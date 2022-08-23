import 'package:flutter/material.dart';

class travel_page extends StatefulWidget {
  const travel_page({Key? key}) : super(key: key);

  @override
  State<travel_page> createState() => _travel_pageState();
}

class _travel_pageState extends State<travel_page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 25.0, vertical: 35.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Enjoy your destination!',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'OpenSans-Bold',
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 45.0,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            'images/Group 105.svg.png',
                            width: 26.0,
                            height: 24.0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    SizedBox(
                      width: 355.0,
                      height: 56.0,
                      child: Material(
                        shadowColor: Colors.white,
                        elevation: 3.0,
                        borderRadius: BorderRadius.circular(28.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: IconButton(
                              icon: Icon(Icons.search),
                              iconSize: 30.0,
                              onPressed: () {},
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(28.0),
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(28.0),
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
                            ),
                            hintText: 'Search Your Favourite Place',
                            hintStyle: TextStyle(
                                fontFamily: 'OpenSans-Regular',
                                fontSize: 16.0,
                                color: Color.fromRGBO(129, 129, 129, 3030)),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                    Material(
                      shadowColor: Colors.white,
                      elevation: 3.0,
                      borderRadius: BorderRadius.circular(15.0),
                      child: Container(
                        width: 324.0,
                        height: 315.87,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.white,
                        ),
                        child: Stack(
                          children: [
                            Image(
                              image: AssetImage('images/Mask by Mask.png'),
                              width: 324.0,
                              height: 295.24,
                            ),
                            Positioned(
                              top: 160.0,
                              child: Container(
                                width: 324.0,
                                height: 289.24,
                                child: ListTile(
                                  title: Text(
                                    'Hilton Thai Hotel',
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontFamily: 'Roboto Bold',
                                    ),
                                  ),
                                  subtitle: Text(
                                    'Los Angeles, Califronia',
                                    style: TextStyle(
                                        fontSize: 12.0,
                                        fontFamily: 'Roboto Regular',
                                        color:
                                            Color.fromRGBO(126, 142, 170, 5)),
                                  ),
                                  trailing: Text(
                                    '4.8',
                                    style: TextStyle(
                                        fontSize: 12.0,
                                        fontFamily: 'Roboto Regular',
                                        color:
                                            Color.fromRGBO(126, 142, 170, 5)),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 230.0,
                              child: Container(
                                width: 324.0,
                                height: 289.24,
                                child: ListTile(
                                  title: Text(
                                    'from \$195 /day',
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontFamily: 'Roboto Bold',
                                    ),
                                  ),
                                  trailing: Text(
                                    'view room',
                                    style: TextStyle(
                                        fontSize: 12.0,
                                        fontFamily: 'Roboto Regular',
                                        color:
                                            Color.fromRGBO(126, 142, 170, 5)),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 150.0,
                              child: Container(
                                  width: 324.0,
                                  height: 289.24,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: 8.87,
                                        height: 8.87,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Color.fromRGBO(
                                                    112, 112, 112, 5),
                                                width: 1),
                                            color: Colors.white,
                                            shape: BoxShape.circle,
                                          ),
                                          child: MaterialButton(
                                            onPressed: () {},
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 3.0,
                                      ),
                                      SizedBox(
                                        width: 8.87,
                                        height: 8.87,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Color.fromRGBO(
                                                    68, 199, 179, 10),
                                                width: 1),
                                            color: Color.fromRGBO(
                                                68, 199, 179, 10),
                                            shape: BoxShape.circle,
                                          ),
                                          child: MaterialButton(
                                            onPressed: () {},
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 3.0,
                                      ),
                                      SizedBox(
                                        width: 8.87,
                                        height: 8.87,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Color.fromRGBO(
                                                    112, 112, 112, 5),
                                                width: 1),
                                            color: Colors.white,
                                            shape: BoxShape.circle,
                                          ),
                                          child: MaterialButton(
                                            onPressed: () {},
                                          ),
                                        ),
                                      ),
                                    ],
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 60.0,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Top Cities',
                        style: TextStyle(
                          fontFamily: 'OpenSans-Bold',
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 18.0,
                    ),
                    Container(
                      width: double.infinity,
                      height: 120.0,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        children: [
                          Image(
                            image: AssetImage('images/Group 62.png'),
                            width: 110.0,
                            height: 90.0,
                          ),
                          SizedBox(
                            width: 12.0,
                          ),
                          Image(
                            image: AssetImage('images/Group 63.png'),
                            width: 110.0,
                            height: 90.0,
                          ),
                          SizedBox(
                            width: 12.0,
                          ),
                          Image(
                            image: AssetImage('images/Group 64.png'),
                            width: 110.0,
                            height: 90.0,
                          ),
                          SizedBox(
                            width: 12.0,
                          ),
                          Image(
                            image: AssetImage('images/Group 65.png'),
                            width: 110.0,
                            height: 90.0,
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
