import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:learn_ease/buyCourse/paymentMethod.dart';

class Overview extends StatefulWidget {
  const Overview({super.key});
  static const routeName = '/overview';

  @override
  State<Overview> createState() => _OverviewState();
}

class _OverviewState extends State<Overview> {
  Color selectedColor = Color.fromRGBO(104, 73, 239, 1);
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
                              style: TextStyle(color: Colors.white),
                            ),
                            backgroundColor: Color.fromRGBO(104, 73, 239, 1),
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
                            child: Text('2'),
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
                            child: Text('3'),
                            backgroundColor: Color.fromRGBO(197, 194, 194, 1),
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
                'Overview',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Container(
                width: 351,
                height: 132,
                padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                margin: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(232, 228, 253, 1),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/MobileAppDesign.png'),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Mobile App Design',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.person,
                                color: Colors.grey,
                              ),
                              Text(
                                'By Robert James',
                                style:
                                    TextStyle(fontSize: 14, color: Colors.grey),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              RatingBarIndicator(
                                itemBuilder: (context, index) => const Icon(
                                  Icons.star,
                                  color: Colors.black,
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
                                style:
                                    TextStyle(fontSize: 12, color: Colors.grey),
                              )
                            ],
                          ),
                          Text(
                            '(14,670 reviews)',
                            style: TextStyle(fontSize: 11, color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                    Icon(
                      Icons.delete,
                      color: Color.fromRGBO(149, 128, 244, 1),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Stack(children: <Widget>[
                Container(
                  width: 350,
                  height: 132,
                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.only(top: 15),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Price incl. tax',
                              style: TextStyle(fontSize: 14),
                            ),
                            Text('100.00\$'),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Coupon',
                              style: TextStyle(fontSize: 14),
                            ),
                            Text('15.00\$'),
                          ],
                        ),
                      ),
                      Divider(
                        height: 10,
                        thickness: 1,
                        color: Colors.black,
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          bottom: 10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total',
                              style: TextStyle(fontSize: 14),
                            ),
                            Text(
                              '75.00\$',
                              style: TextStyle(
                                  color: Color.fromRGBO(104, 73, 239, 1),
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  left: 10,
                  child: Container(
                    padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                    color: Colors.white,
                    child: Text(
                      'Purchase Summary',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                ),
              ]),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, PaymentMethod.routeName);
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(104, 73, 239, 1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    fixedSize: const Size(350, 47)),
                child: const Text(
                  'Continue',
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
