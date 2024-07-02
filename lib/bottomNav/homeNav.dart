import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:learn_ease/Course/CourseMain.dart';

class HomeNav extends StatefulWidget {
  const HomeNav({super.key});

  @override
  State<HomeNav> createState() => _HomeNavState();
}

class _HomeNavState extends State<HomeNav> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15, left: 15, top: 10),
      child: Column(
        children: [
          SizedBox(
            height: 40,
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(49.0),
                  ),
                  filled: true,
                  fillColor: Color.fromRGBO(232, 228, 253, 1),
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search)),
            ),
          ),
          Container(
            height: 31,
            margin: EdgeInsets.only(top: 15),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    'All',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll<Color>(
                          Color.fromRGBO(104, 73, 239, 0.7)),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0)))),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    'UI/UX',
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ButtonStyle(
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0)))),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    'Website design',
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ButtonStyle(
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0)))),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    'App design',
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ButtonStyle(
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0)))),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    'Wireframe Design',
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ButtonStyle(
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0)))),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Continue watching',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'See All',
                        style:
                            TextStyle(color: Color.fromRGBO(104, 73, 239, 1)),
                      )
                    ],
                  ),
                  Container(
                    height: 280,
                    child: GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      childAspectRatio: (.5),
                      children: List.generate(2, (index) {
                        return Container(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, Course.routeName);
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset('assets/images/websiteDesign.png'),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Website Design',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Icon(
                                      Icons.bookmark,
                                      color: Color.fromRGBO(104, 73, 239, 1),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.person,
                                      color: Color.fromRGBO(116, 116, 116, 1),
                                    ),
                                    Text(
                                      'By Robert James',
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    RatingBarIndicator(
                                      itemBuilder: (context, index) =>
                                          const Icon(
                                        Icons.star,
                                        color: Color.fromRGBO(104, 73, 239, 1),
                                      ),
                                      rating: 2.5,
                                      itemCount: 5,
                                      itemSize: 20,
                                      direction: Axis.horizontal,
                                      unratedColor:
                                          Color.fromRGBO(170, 154, 243, 1),
                                    ),
                                    /* RatingBar.builder(
                                      initialRating: 1,
                                      itemCount: 5,
                                      minRating: 1,
                                      maxRating: 5,
                                      itemSize: 20,
                                      unratedColor:
                                          Color.fromRGBO(170, 154, 243, 1),
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemBuilder: (context, index) => const Icon(
                                        Icons.star,
                                        color: Color.fromRGBO(104, 73, 239, 1),
                                      ),
                                      onRatingUpdate: (double value) {},
                                    ),*/
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text('2.5'),
                                  ],
                                ),
                                Container(
                                  width: double.infinity,
                                  child: Text(
                                    '70% Completed',
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                        fontSize: 12,
                                        color:
                                            Color.fromRGBO(116, 116, 116, 1)),
                                  ),
                                ),
                                LinearProgressIndicator(
                                  minHeight: 6,
                                  value: .7,
                                  color: Color.fromRGBO(254, 190, 15, 1),
                                  backgroundColor:
                                      Color.fromRGBO(217, 217, 217, 1),
                                  borderRadius: BorderRadius.circular(27),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Popular Courses',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'See All',
                        style:
                            TextStyle(color: Color.fromRGBO(104, 73, 239, 1)),
                      )
                    ],
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      childAspectRatio: (.5),
                      children: List.generate(2, (index) {
                        return Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('assets/images/websiteDesign.png'),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Website Design',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Icon(
                                    Icons.bookmark,
                                    color: Color.fromRGBO(104, 73, 239, 1),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.person,
                                    color: Color.fromRGBO(116, 116, 116, 1),
                                  ),
                                  Text(
                                    'By Robert James',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  RatingBarIndicator(
                                    itemBuilder: (context, index) => const Icon(
                                      Icons.star,
                                      color: Color.fromRGBO(104, 73, 239, 1),
                                    ),
                                    rating: 2.5,
                                    itemCount: 5,
                                    itemSize: 20,
                                    direction: Axis.horizontal,
                                    unratedColor:
                                        Color.fromRGBO(170, 154, 243, 1),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text('2.5'),
                                ],
                              ),
                            ],
                          ),
                        );
                      }),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
