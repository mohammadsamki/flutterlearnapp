import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:learn_ease/Course/aboutCourse.dart';
import 'package:learn_ease/Course/lessonsCourse.dart';
import 'package:learn_ease/Course/reviewsCourse.dart';
import 'package:learn_ease/buyCourse/overview.dart';

class Course extends StatefulWidget {
  const Course({super.key});
  static const routeName = '/course';

  @override
  State<Course> createState() => _CourseState();
}

class _CourseState extends State<Course> {
  Color selectedColor = Colors.white;
  Color selectedBGcolor = Color.fromRGBO(104, 73, 239, 0.7);
  int _currentIndex = 0;

  List<Widget> selectedWidget = [
    AboutCourse(),
    LessonsCourse(),
    ReviewsCourse(),
  ];

  void onButtonTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Icon(
            Icons.share,
            color: Colors.white,
          ),
          Icon(
            Icons.bookmark,
            color: Colors.white,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              child: Stack(
                children: [
                  Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/courseImage.png'),
                            fit: BoxFit.fill)),
                  ),
                  Container(
                    height: 200,
                    width: 430,
                    color: Color.fromRGBO(104, 73, 239, 0.6),
                  ),
                  Center(
                    child: ElevatedButton.icon(
                      icon: const Icon(
                        Icons.play_circle,
                        color: Colors.white,
                      ),
                      label: const Text(
                        'Course Preview',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {},
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromRGBO(163, 163, 163, 1))),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 35,
              decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.black))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      onButtonTap(0);
                    },
                    style: TextButton.styleFrom(
                        fixedSize: const Size.fromWidth(120),
                        backgroundColor:
                            _currentIndex == 0 ? selectedBGcolor : Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0))),
                    child: Text(
                      'About',
                      style: TextStyle(
                          color: _currentIndex == 0
                              ? selectedColor
                              : Colors.black),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      onButtonTap(1);
                    },
                    style: TextButton.styleFrom(
                        fixedSize: const Size.fromWidth(120),
                        backgroundColor:
                            _currentIndex == 1 ? selectedBGcolor : Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0))),
                    child: Text(
                      'Lessons',
                      style: TextStyle(
                          color: _currentIndex == 1
                              ? selectedColor
                              : Colors.black),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      onButtonTap(2);
                    },
                    style: TextButton.styleFrom(
                        fixedSize: Size.fromWidth(120),
                        backgroundColor:
                            _currentIndex == 2 ? selectedBGcolor : Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0))),
                    child: Text(
                      'Reviews',
                      style: TextStyle(
                          color: _currentIndex == 2
                              ? selectedColor
                              : Colors.black),
                    ),
                  ),
                ],
              ),
            ),
            selectedWidget[_currentIndex],
          ],
        ),
      ),
      persistentFooterButtons: [
        Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, Overview.routeName);
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(104, 73, 239, 1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    fixedSize: const Size(370, 50)),
                child: const Text(
                  'GET ENROLLED',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    side: BorderSide(color: Colors.black),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    fixedSize: Size(370, 50)),
                child: const Text(
                  'ADD TO CART',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
