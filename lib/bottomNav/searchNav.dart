import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SearchNav extends StatefulWidget {
  const SearchNav({super.key});

  @override
  State<SearchNav> createState() => _SearchNavState();
}

class _SearchNavState extends State<SearchNav> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 10, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(49.0),
                    ),
                    filled: true,
                    fillColor: Color.fromRGBO(232, 228, 253, 1),
                    hintText: 'Search',
                    hintStyle: TextStyle(
                        fontSize: 12, color: Color.fromRGBO(141, 137, 137, 1)),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Color.fromRGBO(104, 73, 239, 1),
                    )),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recent Search',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Text(
                  'See All',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                )
              ],
            ),
            Container(
              height: 220,
              child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: 7,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      height: 30,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'UI/UX Designing',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(116, 116, 116, 1)),
                          ),
                          Icon(
                            Icons.close,
                            color: Color.fromRGBO(116, 116, 116, 1),
                          )
                        ],
                      ),
                    );
                  }),
            ),
            Text(
              'All Categories',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            Expanded(
                child: Container(
              margin: EdgeInsets.only(top: 10),
              height: 200,
              child: GridView.count(
                // Create a grid with 2 columns. If you change the scrollDirection to
                // horizontal, this produces 2 rows.
                crossAxisCount: 2,
                // Generate 100 widgets that display their index in the List.
                children: List.generate(6, (index) {
                  return Card.filled(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/categoreis1.png'),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Graphic Design',
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        )
                      ],
                    ),
                  );
                }),
              ),
            ))
          ],
        ));
  }
}
