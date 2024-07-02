import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:learn_ease/bottomNav/myCoursesNav.dart';

class Confirmation extends StatefulWidget {
  const Confirmation({super.key});
  static const routeName = '/confirmation';

  @override
  State<Confirmation> createState() => _ConfirmationState();
}

class _ConfirmationState extends State<Confirmation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: EdgeInsets.only(top: 10, left: 20, right: 20),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 351,
                height: 100,
                padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(232, 228, 253, 1),
                    borderRadius: BorderRadius.circular(10)),
                child: Stack(children: <Widget>[
                  Divider(
                    height: 40,
                    thickness: 1,
                    indent: 10,
                    endIndent: 25,
                    color: Colors.black,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            child: Text(
                              '1',
                              style: TextStyle(color: Colors.black),
                            ),
                            backgroundColor: Color.fromRGBO(197, 194, 194, 1),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Overview')
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            child: Text(
                              '2',
                              style: TextStyle(color: Colors.black),
                            ),
                            backgroundColor: Color.fromRGBO(197, 194, 194, 1),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Payment Method')
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            child: Text('3',
                                style: TextStyle(color: Colors.white)),
                            backgroundColor: Color.fromRGBO(104, 73, 239, 1),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Confirmation')
                        ],
                      ),
                    ],
                  ),
                ]),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Confirmation',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.all(50),
                child: Stack(
                  children: [
                    Image.asset('assets/images/confirmation.png'),
                    Positioned(
                      bottom: 1,
                      left: 13,
                      child: Text(
                        'Transaction Completed',
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {
                  //Navigator.pushNamed(context, MyCoursesNav.routeName);
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(104, 73, 239, 1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    fixedSize: const Size(350, 47)),
                child: const Text(
                  'Continue to Lesson',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
