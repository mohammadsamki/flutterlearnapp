import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class AboutCourse extends StatefulWidget {
  const AboutCourse({super.key});

  @override
  State<AboutCourse> createState() => _AboutCourseState();
}

class _AboutCourseState extends State<AboutCourse> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Website Design',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.person,
                        color: Colors.grey,
                      ),
                      Text(
                        'By Robert James',
                        style: TextStyle(fontSize: 11, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      RatingBarIndicator(
                        itemBuilder: (context, index) => const Icon(
                          Icons.star,
                          color: Color.fromRGBO(104, 73, 239, 1),
                        ),
                        rating: 2.5,
                        itemCount: 5,
                        itemSize: 15,
                        direction: Axis.horizontal,
                        unratedColor: Color.fromRGBO(170, 154, 243, 1),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '2.5',
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      )
                    ],
                  ),
                  Text(
                    '(14,670 reviews)',
                    style: TextStyle(fontSize: 11, color: Colors.grey),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          const Text(
            'Lorem ipsum dolor sit amet consectetur. Urna integer volutpat ullamcorper in. Sed interdum ultricies mi habitant sagittis mauris. Venenatis libero malesuada viverra cras ullamcorper. Lacus dignissim semper ultrices ornare a. Read More',
            style: TextStyle(
                fontSize: 12, color: Color.fromRGBO(116, 116, 116, 1)),
            overflow: TextOverflow.ellipsis,
            maxLines: 4,
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.all(20),
            width: 370,
            height: 100,
            decoration: BoxDecoration(
                color: Color.fromRGBO(232, 228, 253, 1),
                borderRadius: BorderRadius.circular(10)),
            child: const Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.book_outlined,
                      color: Color.fromRGBO(104, 73, 239, 1),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '60 Lessons',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    SizedBox(
                      width: 132,
                    ),
                    Icon(
                      Icons.language,
                      color: Color.fromRGBO(104, 73, 239, 1),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'English',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.timelapse,
                      color: Color.fromRGBO(104, 73, 239, 1),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '20hrs 45mins',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    SizedBox(
                      width: 120,
                    ),
                    Icon(
                      Icons.workspace_premium,
                      color: Color.fromRGBO(104, 73, 239, 1),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Certificate',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            'Total Price',
            textAlign: TextAlign.start,
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
          Text(
            "100.00 \$",
            style: TextStyle(color: Colors.black, fontSize: 24),
          ),
          Row(
            children: [
              Icon(
                Icons.discount,
                color: Color.fromRGBO(104, 73, 239, 1),
              ),
              Text(
                '15% Off- 3 days left',
                style: TextStyle(color: Colors.grey, fontSize: 13),
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Container(
              width: 370,
              height: 100,
              padding: EdgeInsets.only(
                top: 10,
              ),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(232, 228, 253, 1),
                  borderRadius: BorderRadius.circular(10)),
              child: ListTile(
                leading: Image.asset('assets/images/teacher1.png'),
                title: Text(
                  'Robert James',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'Certified Website Designer',
                  style: TextStyle(
                      fontSize: 12, color: Color.fromRGBO(116, 116, 116, 1)),
                ),
                trailing: Text(
                  'Follow',
                  style: TextStyle(
                      fontSize: 14, color: Color.fromRGBO(104, 73, 239, 1)),
                ),
              )),
        ],
      ),
    );
  }
}
