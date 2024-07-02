import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ReviewsCourse extends StatefulWidget {
  const ReviewsCourse({super.key});

  @override
  State<ReviewsCourse> createState() => _ReviewsCourseState();
}

class _ReviewsCourseState extends State<ReviewsCourse> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 15, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Reviews (900)',
              style: TextStyle(fontSize: 12, color: Colors.black),
            ),
            Container(
              margin: EdgeInsets.only(top: 5, bottom: 5),
              height: 30,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(49.0),
                    ),
                    filled: true,
                    fillColor: Color.fromRGBO(232, 228, 253, 1),
                    hintText: 'Search Reviews',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 12),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Color.fromRGBO(104, 73, 239, 1),
                    )),
              ),
            ),
            Text(
              'Sort By',
              style: TextStyle(fontSize: 12, color: Colors.black),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              height: 450,
              child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(top: 5),
                      padding: EdgeInsets.only(left: 5),
                      width: 350,
                      height: 132,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(232, 228, 253, 1),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                              dense: true,
                              visualDensity:
                                  VisualDensity(horizontal: 4, vertical: 4),
                              contentPadding: EdgeInsets.only(
                                  left: 2, right: 5, bottom: 15),
                              horizontalTitleGap: -4,
                              isThreeLine: true,
                              leading: CircleAvatar(
                                radius: 25,
                                foregroundImage:
                                    AssetImage('assets/images/reviewP1.png'),
                              ),
                              title: Text(
                                'Olivia Tom',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                'United States',
                                style:
                                    TextStyle(fontSize: 10, color: Colors.grey),
                              ),
                              trailing: Text('6 months ago')),
                          Text(
                            'Lorem ipsum dolor sit amet consectetur. Urna integer volutpat ullamcorper in. Sed interdum ultricies mi habitant ',
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              RatingBarIndicator(
                                itemBuilder: (context, index) => const Icon(
                                  Icons.star,
                                  color: Color.fromRGBO(104, 73, 239, 1),
                                ),
                                rating: 5,
                                itemCount: 5,
                                itemSize: 20,
                                direction: Axis.horizontal,
                                unratedColor: Color.fromRGBO(170, 154, 243, 1),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '5.0',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black),
                              )
                            ],
                          ),
                        ],
                      ),
                    );
                  }),
            )
          ],
        ));
  }
}
