import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_ease/buyCourse/confirmation.dart';

class AddCart extends StatefulWidget {
  const AddCart({super.key});
  static const routeName = '/addCart';

  @override
  State<AddCart> createState() => _AddCartState();
}

class _AddCartState extends State<AddCart> {
  final GlobalKey<FormState> _key = GlobalKey();
  @override
  bool? isChecked = true;

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
                              style: TextStyle(color: Colors.white),
                            ),
                            backgroundColor: Color.fromRGBO(104, 73, 239, 1),
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
                'Add Card',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: 349,
                height: 290,
                padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(244, 244, 244, 1),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.payment,
                          color: Color.fromRGBO(104, 73, 239, 1),
                          size: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Card Details',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        //DropdownButton(items: items, onChanged: onChanged)
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Form(
                      key: _key,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Card Holder Name',
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromRGBO(116, 116, 116, 1)),
                          ),
                          Container(
                            width: 324,
                            height: 39,
                            margin: EdgeInsets.only(top: 10, bottom: 10),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Color.fromRGBO(232, 228, 253, 1),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide.none),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide.none),
                                  hintText: 'Name Here',
                                  hintStyle: TextStyle(
                                      fontSize: 13,
                                      color: Color.fromRGBO(116, 116, 116, 1))),
                            ),
                          ),
                          Text(
                            'Card Number',
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromRGBO(116, 116, 116, 1)),
                          ),
                          Container(
                            width: 324,
                            height: 39,
                            margin: EdgeInsets.only(top: 10, bottom: 10),
                            child: TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Color.fromRGBO(232, 228, 253, 1),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide.none),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide.none),
                                  hintText: '**** **** ****',
                                  hintStyle: TextStyle(
                                      fontSize: 13,
                                      color: Color.fromRGBO(116, 116, 116, 1))),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Expiration Date',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color:
                                            Color.fromRGBO(116, 116, 116, 1)),
                                  ),
                                  Container(
                                    width: 186,
                                    height: 39,
                                    margin:
                                        EdgeInsets.only(top: 10, bottom: 10),
                                    child: TextFormField(
                                      obscureText: true,
                                      decoration: InputDecoration(
                                          filled: true,
                                          fillColor:
                                              Color.fromRGBO(232, 228, 253, 1),
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              borderSide: BorderSide.none),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              borderSide: BorderSide.none),
                                          hintText: '03/04/2024',
                                          hintStyle: TextStyle(
                                              fontSize: 13,
                                              color: Color.fromRGBO(
                                                  116, 116, 116, 1))),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'CVV',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color:
                                            Color.fromRGBO(116, 116, 116, 1)),
                                  ),
                                  Container(
                                    width: 119,
                                    height: 39,
                                    margin:
                                        EdgeInsets.only(top: 10, bottom: 10),
                                    child: TextFormField(
                                      obscureText: true,
                                      decoration: InputDecoration(
                                          filled: true,
                                          fillColor:
                                              Color.fromRGBO(232, 228, 253, 1),
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              borderSide: BorderSide.none),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              borderSide: BorderSide.none),
                                          hintText: '****',
                                          hintStyle: TextStyle(
                                              fontSize: 13,
                                              color: Color.fromRGBO(
                                                  116, 116, 116, 1))),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Checkbox(
                    activeColor: Color.fromRGBO(232, 228, 253, 1),
                    checkColor: Colors.black,
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value;
                      });
                    },
                  ),
                  Text(
                    'Save this Card for Faster Payments.',
                    style: TextStyle(
                        fontSize: 12, color: Color.fromRGBO(116, 116, 116, 1)),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, Confirmation.routeName);
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
