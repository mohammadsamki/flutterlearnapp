import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:learn_ease/buyCourse/addCart.dart';
import 'package:learn_ease/buyCourse/cardList.dart';
import 'package:learn_ease/buyCourse/confirmation.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});
  static const routeName = '/paymentMethod';

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  @override
  String? _valueChoiced = 'Card 1';
  bool _isDropdownOpen = false;
  bool _isCardSaved = true;

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
                'Payment Method',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: 351,
                height: 204,
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
                          'Credit/Debit Card',
                          style: TextStyle(fontSize: 12),
                        ),
                        SizedBox(
                          width: 160,
                        ),
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                _isDropdownOpen = !_isDropdownOpen;
                              });
                            },
                            child: _isDropdownOpen
                                ? Icon(Icons.keyboard_arrow_up)
                                : Icon(Icons.keyboard_arrow_down)),
                      ],
                    ),
                    Container(
                        width: 325,
                        height: 100,
                        child: _isCardSaved
                            ? CardList()
                            : Text('No Cridet/Debit Card Saved')),
                    OutlinedButton.icon(
                        style: OutlinedButton.styleFrom(
                            fixedSize: Size(325, 39),
                            alignment: Alignment.centerLeft,
                            backgroundColor: Color.fromRGBO(217, 217, 217, 1),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            side: BorderSide(
                                color: Color.fromRGBO(162, 140, 255, 1))),
                        onPressed: () {
                          Navigator.pushNamed(context, AddCart.routeName);
                        },
                        icon: Icon(
                          Icons.add_circle,
                          color: Color.fromRGBO(104, 73, 239, 1),
                        ),
                        label: Text(
                          'Add Cart',
                          style: TextStyle(
                              color: Color.fromRGBO(116, 116, 116, 1),
                              fontSize: 12),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 140,
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
