import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardList extends StatefulWidget {
  const CardList({super.key});

  @override
  State<CardList> createState() => _CardListState();
}

class _CardListState extends State<CardList> {
  String? _valueChoiced = 'Card 1';
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 325,
      height: 100,
      child: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: 2,
          itemBuilder: (context, index) {
            return Container(
                width: 324,
                height: 39,
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(232, 228, 253, 1),
                    borderRadius: BorderRadius.circular(10)),
                child: ListTile(
                  dense: true,
                  visualDensity: VisualDensity(horizontal: 4, vertical: -4),
                  contentPadding: EdgeInsets.only(right: 5, left: 15),
                  horizontalTitleGap: 2,
                  leading: Image.asset('assets/images/vesa.png'),
                  title: Text('********'),
                  trailing: Radio(
                    groupValue: _valueChoiced,
                    value: 'Card $index',
                    onChanged: (value) {
                      setState(() {
                        _valueChoiced = value;
                        print(value);
                      });
                    },
                  ),
                ));
          }),
    );
  }
}
