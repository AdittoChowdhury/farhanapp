import 'package:flutter/material.dart';

class Customaction extends StatelessWidget {
  final String tittle;
  final bool hasBAckarrow;
  final bool hasTitle;
  const Customaction(
      {Key key,
       this.tittle,
       this.hasBAckarrow,
       this.hasTitle, bool hasBackarrow, bool hasBackkarrow, bool hasTittle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool _hasBackarrow = hasBAckarrow ?? false;
    bool _hasTitle = hasTitle ?? true;
    return Container(
      padding: EdgeInsets.only(
        top: 50,
        left: 25,
        right: 25,
        bottom: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (_hasBackarrow)
            Container(
              child: Icon(Icons.backspace),
            ),
          if (_hasTitle)
            Text(
              tittle ?? 'bar',
              style: TextStyle(fontSize: 20),
            ),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: Text(
                '0',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}