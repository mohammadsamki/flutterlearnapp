import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyCoursesNav extends StatefulWidget {
  const MyCoursesNav({super.key});
  static const routeName = '/MyCoursesNav';

  @override
  State<MyCoursesNav> createState() => _MyCoursesNavState();
}

class _MyCoursesNavState extends State<MyCoursesNav> {
  Color selectedColor = Colors.white;
  Color selectedBGcolor = Color.fromRGBO(104, 73, 239, 0.7);
  int _currentIndex = 0;

  void onButtonTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, left: 20, right: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(170, 32),
                    backgroundColor:
                        _currentIndex == 0 ? selectedBGcolor : Colors.white,
                  ),
                  onPressed: () {
                    onButtonTap(0);
                  },
                  child: Text(
                    'In Progress',
                    style: TextStyle(
                        color:
                            _currentIndex == 0 ? selectedColor : Colors.black),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(168, 34),
                    backgroundColor:
                        _currentIndex == 1 ? selectedBGcolor : Colors.white,
                  ),
                  onPressed: () {
                    onButtonTap(1);
                  },
                  child: Text(
                    'Completed',
                    style: TextStyle(
                        color:
                            _currentIndex == 1 ? selectedColor : Colors.black),
                  ))
            ],
          ),
          Expanded(
            child: Container(
              child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 351,
                      height: 108,
                      margin: EdgeInsets.only(
                        top: 10,
                      ),
                      padding: EdgeInsets.only(left: 10, right: 10, top: 15),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(232, 228, 253, 1),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset('assets/images/myCourse1.png'),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'UI/UX Design',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(Icons.person),
                                    Text(
                                      'By Robert James',
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.grey),
                                    ),
                                  ],
                                ),
                                Container(
                                  width: double.infinity,
                                  margin: EdgeInsets.only(top: 5, bottom: 5),
                                  child: Text(
                                    '70% Completed',
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                        fontSize: 10,
                                        color:
                                            Color.fromRGBO(116, 116, 116, 1)),
                                  ),
                                ),
                                LinearProgressIndicator(
                                  minHeight: 6,
                                  value: .7,
                                  color: Color.fromRGBO(104, 73, 239, 1),
                                  backgroundColor:
                                      Color.fromRGBO(217, 217, 217, 1),
                                  borderRadius: BorderRadius.circular(27),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
/*Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'UI/UX Design',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                Icon(Icons.person),
                                Text(
                                  'By Robert James',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                ),
                              ],
                            ),
                            Container(
                              width: double.infinity,
                              child: Text(
                                '70% Completed',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromRGBO(116, 116, 116, 1)),
                              ),
                            ),
                            LinearProgressIndicator(
                              minHeight: 6,
                              value: .7,
                              color: Color.fromRGBO(254, 190, 15, 1),
                              backgroundColor: Color.fromRGBO(217, 217, 217, 1),
                              borderRadius: BorderRadius.circular(27),
                            ),
                          ],
                        )*/