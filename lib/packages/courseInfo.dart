import 'package:flutter/material.dart';

class CourseInfo {
  Image? courseImage;
  String? courseName;
  String? teacherName;
  double? courseRate;

  CourseInfo(
      {required this.courseImage,
      required this.courseName,
      required this.teacherName,
      required this.courseRate});
}
