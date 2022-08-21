import 'package:flutter/material.dart';
import '../task1/task1.dart';
import '../task2/welcome_page.dart';
import '../task3/welcome_task3.dart';
import '../task4/welcome_task4.dart';
import '../task5/welcome_task5.dart';

class interface_page extends StatelessWidget {
  const interface_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.orange[200],
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.orange[200],
          elevation: 1.0,
          title: Text(
            'Tasks',
            style: TextStyle(
              fontFamily: 'Quicksand Bold',
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 50.0, vertical: 80.0),
            child: Column(
              //  mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage('images/task.png'),
                  width: 200.0,
                  height: 200.0,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => task1()));
                      },
                      child: Text(
                        'Task 1',
                        style: TextStyle(
                          fontFamily: 'Quicksand Bold',
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        width: double.infinity,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => welcome_task2()));
                      },
                      child: Text(
                        'Task 2',
                        style: TextStyle(
                          fontFamily: 'Quicksand Bold',
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8.0,
                ),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => welcome_task3()));
                      },
                      child: Text(
                        'Task 3',
                        style: TextStyle(
                          fontFamily: 'Quicksand Bold',
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        width: double.infinity,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => welcome_task4()));
                      },
                      child: Text(
                        'Task 4',
                        style: TextStyle(
                          fontFamily: 'Quicksand Bold',
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8.0,
                ),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => welcome_task5()));
                      },
                      child: Text(
                        'Task 5',
                        style: TextStyle(
                          fontFamily: 'Quicksand Bold',
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        width: double.infinity,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Task 6',
                        style: TextStyle(
                          fontFamily: 'Quicksand Bold',
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
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
